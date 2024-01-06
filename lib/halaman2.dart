import 'package:flutter/material.dart';

class halaman2 extends StatelessWidget {
  const halaman2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('back'),
        ),
      ),
    );
  }
}
