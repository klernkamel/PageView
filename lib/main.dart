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
        primarySwatch: Colors.blue,
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
  int _counter = 0;
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.grey,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      controller.jumpToPage(1);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 50.0,
                    height: 50.0,
                    color: Colors.white,
                    child: const Text('Tap!'),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      controller.jumpToPage(0);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 50.0,
                    height: 50.0,
                    color: Colors.white,
                    child: const Text('Back!'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
