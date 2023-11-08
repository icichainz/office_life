import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class FunctionCard extends StatelessWidget {
  const FunctionCard({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final _box = SizedBox(
      height: height * 0.1,
      width: width * 0.1,
      child: const Card(
        color: Colors.yellow,
        child: Center(
          child: Icon(
            Icons.inventory,
            size:  100,
          ),
        ),
      ),
    );

    return _box;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        primarySwatch: Colors.red,
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Office Life: Gestion de bureau'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  calculate_variation(size_one, s) {}

  @override
  Widget build(BuildContext context) {
    final _boxList = List<FunctionCard>.generate(50, (index) => FunctionCard());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.red.shade800,
        child: GridView.count(
          crossAxisCount: 6,
          children: _boxList,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
