import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'widget',
      home: HomePage(),
    );
  }
}

// if you want to change somthing(dynamic page) then you shuold use statefullwidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      // after setState run then reBuild build method
      count++;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widgets'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'you have clicked button no of time',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
// class HomePage extends StatelessWidget {
//   int count = 0;

//   void increment() {
//     count++;
//     print(count);
//   }

//   @override
//   Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('widgets'),
    //     backgroundColor: Colors.amber,
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         const Text(
    //           'you have clicked button no of time',
    //           style: TextStyle(fontSize: 20.0),
    //         ),
    //         Text(
    //           '$count',
    //           style: Theme.of(context).textTheme.displaySmall,
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: increment,
    //     child: const Icon(Icons.add),
    //   ),
    // );
//   }
// }
