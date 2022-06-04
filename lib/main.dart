import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('My Second App'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('hello ninjas!')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
      ),
    )
  ));
}

// main method
// runApp is the parent Widget that will run the app
// MaterialApp and Scaffold for the material look & feel

