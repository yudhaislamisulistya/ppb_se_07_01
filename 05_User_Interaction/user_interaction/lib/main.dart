import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = "One";
  int _number = 0;

  List<DropdownMenuItem<String>> items = [
    const DropdownMenuItem(
      value: "One",
      child: Text("One"),
    ),
    const DropdownMenuItem(
      value: "Two",
      child: Text("Two"),
    ),
    const DropdownMenuItem(
      value: "Three",
      child: Text("Three"),
    ),
  ];

  void randomNumber() {
    setState(() {
      int random = Random().nextInt(100);
      _number = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        // popup menu
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Item 1"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Item 2"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Item 3"),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Item 1 selected"),
                    backgroundColor: Colors.red,
                  ),
                );
              } else if (value == 2) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Item 2 selected")),
                );
              } else if (value == 3) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Item 3 selected")),
                );
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: randomNumber, icon: const Icon(Icons.refresh)),
            Text("Random value:  $_number"),
            DropdownButton(
              items: items,
              value: dropdownValue,
              onChanged: ((value) {
                dropdownValue = value!;
                setState(() {});
              }),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Apakah anda yakin?"),
                      content: const Text("Untuk memproses data ini?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerCustom extends StatelessWidget {
  const ContainerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 200,
      height: 200,
      child: const Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
