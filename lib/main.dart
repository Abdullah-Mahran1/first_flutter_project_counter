// ignore_for_file: deprecated_member_use, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(ZikrApp());
}

class ZikrAppS extends StatefulWidget {
  const ZikrAppS({super.key});

  @override
  State<ZikrAppS> createState() => _ZikrAppSState();
}

class _ZikrAppSState extends State<ZikrAppS> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ZikrApp extends StatefulWidget {
  @override
  State<ZikrApp> createState() => _ZikrAppState();
}

class _ZikrAppState extends State<ZikrApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                icon: Icon(Icons.replay_sharp)),
            centerTitle: true,
            title: Text(
              'المسبحة الذكية 📿',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: TextStyle(fontFamily: 'Inter'),
            ),
            backgroundColor: Color(0xFFF0E6DD)),
        body: Column(
          children: [
            Container(
              height: 2,
            ),
            Stack(children: [
              Image.asset(
                'src/zikr_img.jpg', // Replace with your image asset path
                fit: BoxFit.cover,
                // width: double.infinity,
                // height: double.infinity,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 1 / 3,
                  // heightFactor: 1 / 2,
                  child: Stack(children: [
                    Container(
                      height: 250,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white, // Circle color
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 70.0),
                      child: Center(
                        heightFactor: 1,
                        child: Text(
                          count.toString(),
                          style: TextStyle(
                              fontSize: 100,
                              color: Color(0xffEEBB8D),
                              fontFamily: 'Lalezar'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ]),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight / 10,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEEBB8D)),
                  onPressed: () {
                    setState(() {
                      count += 1;
                    });
                  },
                  child: Center(
                    child: Text('+',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 40)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50, left: 3, right: 3),
              child: SizedBox(
                width: double.infinity,
                height: screenHeight / 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEEBB8D)),
                  onPressed: () {
                    setState(() {
                      count -= 1;
                    });
                  },
                  child: Center(
                    child: Text('-',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                  ),
                ),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
        ),
        backgroundColor: Color(0xffb00404),
      ),
    );
  }
}
