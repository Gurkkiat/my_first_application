import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(), // วิดเจ็ตหน้าจอหลักของคุณ
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // ภายในเมธอด build ของ MyHomePage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 4'),
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
      body: Padding(
        // เพิ่ม Padding รอบ Column
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // ใช้ Column สำหรับเลย์เอาต์แนวตั้ง
          //crossAxisAlignment:
          //    CrossAxisAlignment.center, // จัดกึ่งกลางไอเท็มแนวนอน
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ภายในลิสต์ children ของ Column
            Image.network(
              'https://picsum.photos/seed/flutter/400/200',
              height: 100.0,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 30.0),
            Image.asset(
              'assets/images/A-Cat.jpg',
              height: 100.0,
              fit: BoxFit.fitHeight,
              errorBuilder: (context, error, stackTrace) {
                // แนวปฏิบัติที่ดีแม้สำหรับ assets, เผื่อกรณีพาธผิด
                return const Text(
                  'เกิดข้อผิดพลาดในการโหลด asset',
                  style: TextStyle(color: Color.fromARGB(255, 54, 70, 244)),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              width: 600.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 110, 70, 32),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'สวัสดี Flutter!',
                style: GoogleFonts.lato(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 189, 19, 187),
                ),
                //  fontSize: 20.0,
                //  fontWeight: FontWeight.bold,
                //  color: Colors.amber,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // จัดกึ่งกลางปุ่มแนวนอน
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print('กดปุ่ม Elevated');
                  },
                  child: const Text('Elevated'),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                OutlinedButton(
                  onPressed: () {
                    print('กดปุ่ม Outlined');
                  },
                  child: const Icon(Icons.people_alt),
                ),
                const SizedBox(width: 10), // เว้นวรรคระหว่างปุ่ม
                TextButton(
                  onPressed: () {
                    print('กดปุ่ม Text');
                  },
                  child: const Text('Text'),
                ),
              ],
            ),
            const SizedBox(height: 16), // เว้นวรรคใต้ปุ่ม
            // ... IconButton อาจจะตามมา ...
            IconButton(
              onPressed: () {
                print('กดไอคอน Info');
              },
              icon: const Icon(Icons.info_outline),
              iconSize: 50,
              tooltip: 'ข้อมูล', // ข้อความช่วยเหลือ
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}