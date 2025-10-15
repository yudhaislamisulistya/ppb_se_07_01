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
  List<String> names = [
    "Bagus",
    "Budi",
    "Joko",
    "Susi",
    "Ani",
    "Rina",
    "Tono",
    "Dewi",
  ];

  // List<Color> colors = [
  //   Colors.red,
  //   Colors.blue,
  //   Colors.green,
  //   Colors.orange,
  //   Colors.purple,
  //   Colors.brown,
  //   Colors.cyan,
  //   Colors.amber,
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: ListView.builder(
      //   itemCount: names.length,
      //   itemBuilder: (context, index) {
      //     Color color;

      //     if (index % 2 == 0) {
      //       color = Colors.blue;
      //     } else {
      //       color = Colors.black;
      //     }
      //     return ListTile(
      //       title: Text(
      //         "Nama  ${names[index]}",
      //         style: TextStyle(
      //           // color: index == 0 ? Colors.red : Colors.black,
      //           color: color,
      //         ),
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return listItem();
        },
      ),
    );
  }

  Widget listItem() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Agus Harjoko"),
                  Text("Lecture"),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
