import 'package:flutter/material.dart';

class halaman2withdata extends StatelessWidget {
  halaman2withdata({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
