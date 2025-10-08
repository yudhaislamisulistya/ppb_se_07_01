import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Widget> containers = [
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
    ),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: containers.length,
        itemBuilder: (context, index) {
          return containers[index];
        },
      ),
      // body: const Row(
      //   children: [
      //     FlutterLogo(),
      //     Expanded(
      //       child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      //     ),
      //     Icon(Icons.access_alarm),
      //   ],
      // ),
    );
  }
}
