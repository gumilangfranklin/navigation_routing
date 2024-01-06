import 'package:flutter/material.dart';

class halamanpengganti extends StatelessWidget {
  const halamanpengganti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/halamanlainnya');
          },
          child: Text('open another screen'),
        ),
      ),
    );
  }
}
