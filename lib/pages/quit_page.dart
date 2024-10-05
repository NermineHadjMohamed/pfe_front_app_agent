import 'package:flutter/material.dart';

class QuitPage extends StatelessWidget {
  const QuitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Are you sure you want to quit?',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle the cancel action
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to /loginAgent instead of quitting
                    Navigator.of(context).pushNamedAndRemoveUntil('/loginAgent', (route) => false);
                  },
                  child: const Text('Quit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
