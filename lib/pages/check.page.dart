import 'package:demo_app/models/parameter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For jsonDecode


class ParameterCheckPage extends StatefulWidget {
  @override
  _ParameterCheckPageState createState() => _ParameterCheckPageState();
}

class _ParameterCheckPageState extends State<ParameterCheckPage> {
  List<Parameter> parameters = [];
  Map<String, String> parameterSelection = {}; // Map to store selected values
  bool isLoading = true; // Loading state for the API call

  @override
  void initState() {
    super.initState();
    fetchParameters(); // Fetch parameters when the widget is initialized
  }

  // Function to fetch parameters from the API
  Future<void> fetchParameters() async {
    try {
      final response = await http.get(Uri.parse('YOUR_API_ENDPOINT_HERE'));

      if (response.statusCode == 200) {
        // Parse the JSON response
        List<dynamic> jsonResponse = json.decode(response.body);
        setState(() {
          parameters = jsonResponse.map((data) => Parameter.fromJson(data)).toList();
          isLoading = false; // Update loading state
        });
      } else {
        throw Exception('Failed to load parameters');
      }
    } catch (error) {
      setState(() {
        isLoading = false; // Update loading state
      });
      print(error); // Handle error (consider showing an alert to the user)
    }
  }

  // Function to update the selected value for a parameter
  void updateSelection(String parameterId, String value) {
    setState(() {
      parameterSelection[parameterId] = value;
    });
  }

  // Function to confirm the selections
  void confirmSelections() {
    print('Confirmed Parameters: $parameterSelection');
    // Handle confirmation logic here (e.g., save selections, navigate)
  }

  // Function to cancel the selections
  void cancelSelections() {
    setState(() {
      parameterSelection.clear();
    });
    print('Canceled Parameter Selections');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parameter Check'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // Show loading indicator
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Table(
                      border: TableBorder.all(),
                      columnWidths: {
                        0: FlexColumnWidth(2),
                        1: FlexColumnWidth(1),
                      },
                      children: [
                        TableRow(
                          decoration: BoxDecoration(color: Colors.grey[300]),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Parameter Name (Value)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Check',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        ...parameters.map((parameter) {
                          return TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${parameter.parameterName} (${parameter.parameterValue})',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton<String>(
                                  value: parameterSelection[parameter.id] ?? 'Undefined',
                                  onChanged: (value) {
                                    updateSelection(parameter.id, value!);
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      child: Text('Yes'),
                                      value: 'Yes',
                                    ),
                                    DropdownMenuItem(
                                      child: Text('No'),
                                      value: 'No',
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Undefined'),
                                      value: 'Undefined',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Confirm and Cancel buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: confirmSelections,
                          child: Text('Confirm'),
                        ),
                        ElevatedButton(
                          onPressed: cancelSelections,
                          child: Text('Cancel'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Change color to indicate cancel
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

