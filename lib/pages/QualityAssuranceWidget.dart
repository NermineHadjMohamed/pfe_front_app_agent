/*import 'package:flutter/material.dart';

class QualityAssuranceWidget extends StatefulWidget {
  final List<dynamic> parameters; // List of parameters
  final String roleName; // Role name

  QualityAssuranceWidget({
    required this.parameters,
    required this.roleName,
  });

  @override
  _QualityAssuranceWidgetState createState() => _QualityAssuranceWidgetState();
}

class _QualityAssuranceWidgetState extends State<QualityAssuranceWidget> {
  Map<String, String?> selectedValues = {}; // Store selected values

  @override
  Widget build(BuildContext context) {
    // Check if roleName is "Quality Assurance"
    if (widget.roleName.trim() != "Quality Assurance") {
      return const SizedBox.shrink(); // Return an empty widget if not
    }

    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Parameters:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
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
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    // Logique pour le bouton "Confirmer"
                    print(
                        "Confirmer action avec les sélections: $selectedValues");
                  },
                  child: const Text("Confirmer"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white),
                  onPressed: () {
                    // Logique pour le bouton "Annuler"
                    print("Annuler action");
                  },
                  child: const Text("Annuler"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/