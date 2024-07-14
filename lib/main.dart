// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class TeksUtama extends StatelessWidget {
  const TeksUtama({super.key, required this.teks1, required this.teks2, this.backgroundColor});

  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 167, 162, 162),
            ),
          ),
        ],
      ),
    );
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TeksUtama(
                      teks1: 'MUHAMMAD RIFKI',
                      teks2: 'STI202102498',
                    ),
                    TeksUtama(
                      teks1: 'SEPTI APRILIA WULANDARI',
                      teks2: 'STI202102504',
                    ),
                    TeksUtama(
                      teks1: 'FATIN NURMALANINGRUM',
                      teks2: 'STI202102505',
                    ),
                    TeksUtama(
                      teks1: 'IMACULATA HAGAR KEMALA',
                      teks2: 'STI202102516',
                    ),
                    TeksUtama(
                      teks1: 'MARGERETA STEPHANI',
                      teks2: 'STI202102517 ',
                    ),
                    TeksUtama(
                      teks1: 'SALSABILA MUMTAZ',
                      teks2: 'STI202102521',
                      backgroundColor: Colors.yellow,
                    ),
                    TeksUtama(
                      teks1: 'ANA SAFITRI',
                      teks2: 'STI202102525',
                    ),
                    TeksUtama(
                      teks1: 'GIAS GARDA PAMUNGKAS',
                      teks2: 'STI202102533',
                    ),
                    TeksUtama(
                      teks1: 'LUKMAN FAOZI',
                      teks2: 'STI202102540',
                    ),
                    TeksUtama(
                      teks1: 'NIAM ABDALLAH NAWAV',
                      teks2: 'STI202102557',
                    ),
                    TeksUtama(
                      teks1: 'MUHAMMAD KHOERUL ANAM',
                      teks2: 'STI202102561',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
