import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List nama = [
    'Nathan Nurdadyansyah',
    'John Postel',
    'Amanda Septiana',
    'Barack Obama',
    'Nicholas Jhonson Andrianto',
    'Kirana Tesya Prastika'
  ];
  List telp = [
    '089064516520',
    '085489745612',
    '081265489560',
    '082133654411',
    '089164573251',
    '085634615794'
  ];
  List surel = [
    'nath@123.com',
    'johnp123@postel.com',
    'amsep90@gmail.com',
    'barack120@us.gov',
    'nich9876@yahoo.co.id',
    'kirana@mail.com'
  ];
  List foto = [
    "../img/am.JPG",
    "../img/bar.JPG",
    "../img/john.JPG",
    "../img/kir.JPG",
    "../img/nath.JPG",
    "../img/nic.JPG"
  ];

  @override
  Widget build(BuildContext context) {
    nama.sort();
    surel.sort();
    telp.sort();
    return MaterialApp(
      title: 'Nathan Nurdadyansyah',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Data Kontak'),
            ),
          ),
          body: ListView(
            children: [
              for (int i = 0; i < nama.length; i++)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.cyan,
                        backgroundImage: AssetImage(foto[i]),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 100,
                          height: 120,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(nama[i]),
                              Text(telp[i]),
                              Text(surel[i]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          )),
    );
  }
}
