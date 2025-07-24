import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // เริ่มแอปโดยใช้ MyApp เป็นวิดเจ็ตราก
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ DEBUG
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(), // หน้าหลักของแอป
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 3 Lab.'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: MyBoxContent(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB Pressed!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyBoxContent extends StatelessWidget {
  const MyBoxContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: const Text(
        'Boxed Content',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
