// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:user_interaction/widgets/item_container.dart';

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
  List<String> names = [
    "Agus",
    "Budi",
    "Citra",
    "Dewi",
    "Eka",
  ];
  int index = 0;

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
  String selectedItem = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: false,
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 12),
          Icon(Icons.logout),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ItemContainer(),
          const Text(
            "Result name generated will appear here",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Text(
            names[index],
            style: const TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState(() {
                index = index + 1;
              });
              print(index);
              print(names[index]);
            },
            child: const Text("Generate Item form One"),
          ),
          DropdownButton(
            value: selectedItem,
            items: items,
            onChanged: (value) {
              selectedItem = value!;
              setState(() {});
              print(value);
            },
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Generate Item from Two"),
          ),
          GestureDetector(
            onTap: () {
              print("Anda menekan icon alarm");
            },
            child: Icon(
              Icons.access_alarm,
              size: 50,
              color: Colors.blue[900],
            ),
          ),
          IconButton(
              onPressed: () {
                SnackBar snackBar = const SnackBar(
                  content: Text("Anda menekan icon alarm"),
                  backgroundColor: Colors.red,
                  showCloseIcon: true,
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(Icons.add_alarm))
        ],
      ),
    );
  }
}
