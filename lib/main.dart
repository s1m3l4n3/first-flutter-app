import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Second App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.asset('images/pexels-photo-1172849.jpeg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text('click'),
      ),
    );
  }
}


//  1. main method.
//  2. runApp is the parent Widget that will run the app.

/*
 *  3. MaterialApp and Scaffold for the material look & feel.
 *  https://api.flutter.dev/flutter/material/Scaffold-class.html
 */

/*
 *  4. have a look at material design colours.
 *  https://material.io/resources/color/#!/?view.left=0&view.right=0
 */

// 5. pubspec.yaml is the main dependencies file

// 6. stless to add StatelessWidget
