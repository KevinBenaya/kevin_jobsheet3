import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Text(
                        'Suhu dalam Kelvin',
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Text(
                        'Suhu dalam Reamur',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 500,
                padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Konversi Suhu",
                    style: TextStyle(
                      color: Colors.white,
                    ),
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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  kelvin() {
    setState(() {
      _inputUser = double.parse(retrive1.text);
      _kelvin = _inputUser + 273;
    });
  }

  reamur() {
    setState(() {
      _inputUser = double.parse(retrive1.text);
      _reamur = 4 ~/ 5 * _inputUser;
    });
  }

  TextEditingController retrive1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: retrive1,
              decoration: InputDecoration(
                hintText: 'Masukkan Suhu Dalam Celcius',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Text(
                      'Suhu dalam Kelvin',
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Text(
                      'Suhu dalam Reamur',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 100),
                    child: Text(
                      ' : $_kelvin',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 100),
                    child: Text(
                      ' : $_reamur',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              padding: EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Konversi Suhu",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
