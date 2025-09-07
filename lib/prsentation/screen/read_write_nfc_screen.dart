import 'dart:io';
import 'dart:async';
import 'package:demo_app/api/api_service.dart';
import 'package:demo_app/models/task.dart';
import 'package:demo_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/config.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart'; 
import 'package:http/http.dart' as http; 
import 'package:path_provider/path_provider.dart';
import 'dart:convert'; 
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

void _quitApp(BuildContext context) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => LoginPage()),
    (Route<dynamic> route) => false,
  );
}

class ReadWriteNFCScreen extends StatefulWidget {
  const ReadWriteNFCScreen({Key? key}) : super(key: key);

  @override
  _ReadWriteNFCScreenState createState() => _ReadWriteNFCScreenState();
}

class _ReadWriteNFCScreenState extends State<ReadWriteNFCScreen> {
  CameraController? _cameraController;
  bool _isDetecting = false;
  final TextRecognizer _textRecognizer = TextRecognizer();
  String? nfcTagId; 

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _cameraController = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    await _cameraController?.initialize();
    if (!mounted) return;

    setState(() {});
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    _textRecognizer.close(); 
    super.dispose();
  }

  Future<void> _scanForNumbers(BuildContext context) async {
    if (_cameraController != null && !_isDetecting) {
      setState(() {
        _isDetecting = true;
      });

      try {
        final image = await _cameraController!.takePicture();
        final inputImage = InputImage.fromFilePath(image.path);
        final recognizedText = await _textRecognizer.processImage(inputImage);
        nfcTagId = _extractNumbersFromText(recognizedText.text);

        setState(() {
          _isDetecting = false;
        });
        await _sendNfcTagIdToApi(context);
      } catch (e) {
        print("Error detecting text: $e");
        setState(() {
          _isDetecting = false;
        });
      }
    }
  }

  String _extractNumbersFromText(String text) {
    final numberRegExp = RegExp(r'\d+'); 
    final match = numberRegExp.firstMatch(text);
    return match?.group(0) ??
        'No numbers detected'; 
  }

  Future<void> _sendNfcTagIdToApi(BuildContext context) async {
    if (nfcTagId != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      String? agentId =
          prefs.getString('agentId'); 

      if (token == null || agentId == null) {
        print('Error: Token or agentId is null, unable to send NFC tag ID');
        return;
      }

      var url = Uri.https(Config.apiURL, '/api/tag/$nfcTagId');
      print('Sending request to: $url');

      try {
        final response = await http.get(
          url,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        );

        if (response.statusCode == 200) {
          final jsonResponse = jsonDecode(response.body);

          if (jsonResponse['success'] == true &&
              jsonResponse['products']['success'] == true) {
            var productData = jsonResponse['products']['data'][0];
            var productDetails = productData['productDetails'];
            var productId = productData['productId'];
            var orderId = productData['orderId']; 
            var quantity = productData['quantity']; 
            List roles = productDetails['roles'];
            String? roleId;
            for (var role in roles) {
              if (role['agents'].any((agent) => agent['agentId'] == agentId)) {
                roleId = role['roleId']; 
                break;
              }
            }

            print("Extracted productId: $productId");
            print("Extracted orderId: $orderId");
            print("Extracted quantity: $quantity");
            print("Extracted roleId: $roleId");
            bool isQualityAssurance = roles.any((role) {
              return role['roleName'].trim() == "Quality Assurance" &&
                  role['agents'].any((agent) => agent['agentId'] == agentId);
            });

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => isQualityAssurance
                    ? QualityAssuranceWidget(
                        productName: productDetails['productName'],
                        parameters: productDetails['parameters'],
                        roleName: "Quality Assurance",
                        productId: productId,
                        agentId: agentId,
                        quantity: quantity,
                        productDocument: productDetails['productDocument'],
                        roleId: roleId.toString(),
                        orderId: orderId)
                    : ProductDetailsPage(
                        productId: productId,
                        agentId: agentId,
                        productName: productDetails['productName'],
                        quantity: quantity,
                        productDocument: productDetails['productDocument'],
                        roleName: roles[0]['roleName'],
                        roleId: roleId.toString(),
                        orderId: orderId 
                        ),
              ),
            );
          } else {
            print('No products found or API response error.');
          }
        } else {
          print(
              'Failed to send NFC tag ID. Status code: ${response.statusCode}');
        }
      } catch (e) {
        print('Error sending NFC tag ID: $e');
      }
    } else {
      print('NFC tag ID is null, cannot send to API.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan NFc Tag"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              _quitApp(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _cameraController != null && _cameraController!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _cameraController!.value.aspectRatio,
                  child: CameraPreview(_cameraController!),
                )
              : const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _isDetecting ? null : () => _scanForNumbers(context),
            child: const Text("Start Scanning"),
          ),
          if (_isDetecting) ...[
            const SizedBox(height: 16),
            const CircularProgressIndicator(),
            const SizedBox(height: 8),
            const Text("Detecting numbers..."),
          ],
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////

class ProductDetailsPage extends StatelessWidget {
  final String productName;
  final int quantity;
  final String productDocument;
  final String roleName;
  final String productId;
  final String roleId;
  final String orderId;
  final String agentId;

  ProductDetailsPage({
    required this.productName,
    required this.quantity,
    required this.productDocument,
    required this.roleName,
    required this.productId,
    required this.roleId,
    required this.orderId,
    required this.agentId,
  });

  Future<String> _savePdf(String base64String) async {
    final bytes = base64.decode(base64String);
    final dir = await getTemporaryDirectory();
    final filePath = '${dir.path}/product_document.pdf';
    final file = File(filePath);
    await file.writeAsBytes(bytes);
    return filePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              _quitApp(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product Name: $productName",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Quantity: $quantity",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text("Role Name: $roleName",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final filePath = await _savePdf(productDocument);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfViewPage(filePath: filePath),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Match with app bar color
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text("View Product Document"),
            ),
            const SizedBox(height: 16),
            TaskTimerWidget(
              productId: productId,
              roleId: roleId,
              orderId: orderId,
              quantity: quantity,
              agentId: agentId,
            ),
          ],
        ),
      ),
    );
  }
}

class PdfViewPage extends StatelessWidget {
  final String filePath;

  const PdfViewPage({Key? key, required this.filePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Document"),
      ),
      body: PDFView(
        filePath: filePath,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: true,
        onRender: (_pages) {
          print('PDF rendered: $_pages pages');
        },
        onError: (error) {
          print('Error: $error');
        },
        onPageError: (page, error) {
          print('Page $page error: $error');
        },
      ),
    );
  }
}

class QualityAssuranceWidget extends StatefulWidget {
  final List<dynamic> parameters; 
  final String roleName; 
  final String productName;
  final int quantity;
  final String productDocument;
  final String productId;
  final String roleId; 
  final String orderId; 
  String agentId; 

  QualityAssuranceWidget({
    required this.parameters,
    required this.roleName,
    required this.productName,
    required this.quantity,
    required this.productDocument,
    required this.productId,
    required this.roleId, 
    required this.orderId,
    required this.agentId,
  });

  @override
  _QualityAssuranceWidgetState createState() => _QualityAssuranceWidgetState();
}

class _QualityAssuranceWidgetState extends State<QualityAssuranceWidget> {
  Map<String, String?> selectedValues = {}; 
  bool isTaskStarted = false; 

  @override
  Widget build(BuildContext context) {
    if (widget.roleName.trim() != "Quality Assurance") {
      return const SizedBox.shrink(); 
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quality Assurance'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              _quitApp(context);
            },
          ),
        ],
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            // Added this line
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Quality Parameters:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Parameter Name')),
                      DataColumn(label: Text('Current Value')),
                      DataColumn(label: Text('Selection')),
                    ],
                    rows: widget.parameters.map((parameter) {
                      String parameterName = parameter['name'];
                      return DataRow(
                        cells: [
                          DataCell(Text(parameterName)),
                          DataCell(Text(parameter['value'].toString())),
                          DataCell(
                            Row(
                              children: [
                                Radio<String>(
                                  value: "Yes",
                                  groupValue: selectedValues[parameterName],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValues[parameterName] = value;
                                    });
                                  },
                                ),
                                const Text("Yes"),
                                Radio<String>(
                                  value: "No",
                                  groupValue: selectedValues[parameterName],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValues[parameterName] = value;
                                    });
                                  },
                                ),
                                const Text("No"),
                                Radio<String>(
                                  value: "Undefined",
                                  groupValue: selectedValues[parameterName],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValues[parameterName] = value;
                                    });
                                  },
                                ),
                                const Text("Undefined"),
                              ],
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        _handleConfirm(
                            context); 
                      },
                      child: const Text("Confirm"), 
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _handleCancel(); 
                      },
                      child: const Text("Cancel"),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TaskTimerWidget(
                  productId: widget.productId,
                  roleId: widget.roleId,
                  orderId: widget.orderId,
                  quantity: widget.quantity,
                  agentId: widget.agentId,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleConfirm(BuildContext context) {
    setState(() {
      isTaskStarted = true; 
    });

    bool allSelected = selectedValues.length == widget.parameters.length;
    bool allYes =
        allSelected && selectedValues.values.every((value) => value == "Yes");

    if (!allSelected) {
      _showMessage(
        context,
        "Error",
        "Please make sure all parameters for product ${widget.productName} are selected.",
        Colors.orange,
        Icons.warning_amber_rounded,
      );
    } else if (allYes) {
      _showMessage(
        context,
        "Success",
        "All parameters for product ${widget.productName} are confirmed.",
        Colors.green,
        Icons.check_circle,
      );
    } else {
      List<String> problematicParams = widget.parameters
          .where((param) => selectedValues[param['name']] != "Yes")
          .map((param) => param['name'].toString())
          .toList();
      String errorMessage =
          "The following parameters for product ${widget.productName} are not confirmed: ${problematicParams.join(", ")}.";
      _showMessage(context, "Error", errorMessage, Colors.red, Icons.error);
    }
  }
  void _handleCancel() {
    setState(() {
      selectedValues.clear(); 
      isTaskStarted = false; 
    });
  }
  void _showMessage(BuildContext context, String title, String message,
      Color color, IconData icon) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 8),
            Text(title),
          ],
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); 
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }
}

class TaskTimerWidget extends StatefulWidget {
  final String productId;
  final String roleId; 
  final String orderId; 
  final int quantity;

  final String agentId; 

  const TaskTimerWidget(
      {required this.productId,
      required this.roleId,
      required this.orderId,
      required this.quantity,
      required this.agentId});

  @override
  _TaskTimerWidgetState createState() => _TaskTimerWidgetState();
}

class _TaskTimerWidgetState extends State<TaskTimerWidget> {
  bool isStarted = false;
  DateTime? startTime;
  Duration timerDuration = Duration.zero; 
  Timer? _timer; 

  void _startTask() {
    setState(() {
      isStarted = true;
      startTime = DateTime.now();
      timerDuration = Duration.zero; 
    });
    Task task = Task(
      productId: widget.productId,
      agentId: widget.agentId, 
      roleId: widget.roleId,
      orderId: widget.orderId,
      quantity: widget.quantity,
      startTime: startTime!,
    );
    APIService.startTask(task);
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        timerDuration = DateTime.now().difference(startTime!);
      });
    });
  }

  void _finishTask() async {
    if (isStarted) {
      setState(() {
        isStarted = false;
        if (_timer != null) {
          _timer?.cancel(); 
          _timer = null;
        }
      });

      Task task = Task(
        productId: widget.productId,
        agentId: widget.agentId, 
        roleId: widget.roleId,
        orderId: widget.orderId,
        quantity: widget.quantity,
        startTime: startTime!,
      );

      await APIService.sendFinishTaskApi(task);

      print(
          'Task finished. Total Duration: ${timerDuration.inSeconds} seconds');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Task finished successfully'),
          duration:
              const Duration(seconds: 2), 
        ),
      );

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, '/ReadWriteNFCScreen');
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isStarted
              ? 'Task is running. Time: ${timerDuration.inSeconds} seconds'
              : 'Task not started yet',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed:
              isStarted ? null : _startTask, 
          child: const Text('Start Task'),
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.green, 
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: isStarted ? _finishTask : null,
          child: const Text('Finish Task'),

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
