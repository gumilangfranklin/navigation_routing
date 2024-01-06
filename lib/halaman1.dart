import 'package:flutter/material.dart';

class Halaman1 extends StatelessWidget {
  const Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation & rotuing"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-kedua');
              },
              child: Text(
                'go to second screen',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-kedua-with-data',
                    arguments: 'okokokoklalalala');
              },
              child: Text(
                'navigation with data',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var scaffoldMessanger = ScaffoldMessenger.of(context);
                var hasil =
                    await Navigator.pushNamed(context, '/mengembalikan-data');
                var snackbar = SnackBar(
                  content: Text('$hasil'),
                );

                scaffoldMessanger.showSnackBar(snackbar);

                print(hasil);
              },
              child: Text(
                'return data from another script',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halamanpengganti');
              },
              child: Text(
                'replace screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
