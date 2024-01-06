import 'package:flutter/material.dart';

class mengembalikandata extends StatefulWidget {
  mengembalikandata({super.key});

  @override
  State<mengembalikandata> createState() => _mengembalikandataState();
}

class _mengembalikandataState extends State<mengembalikandata> {
  final nameTextFieldController = TextEditingController();

  @override
  void dispose() {
    nameTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameTextFieldController,
              decoration: InputDecoration(
                label: Text('masukin nama'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, nameTextFieldController.text);
              },
              child: Text('Kirim data'),
            )
          ],
        ),
      ),
    );
  }
}
