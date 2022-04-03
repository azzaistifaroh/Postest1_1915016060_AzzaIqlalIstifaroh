import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postest 1 Azza Iqlal Istifaroh"),
        backgroundColor: Color.fromARGB(255, 175, 166, 201),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          height: tinggi / 6,
          width: lebar,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 175, 166, 201),
                Color.fromARGB(255, 141, 160, 214),
              ],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(130, 0, 0, 0),
                // spreadRadius: 0.2,
                blurRadius: 18,
                offset: Offset(3, 3), // changes position of shadow
              )
            ],
            border: Border.all(
              width: 15,
              color: Color.fromARGB(255, 231, 224, 231),
            ),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(60),
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
          ),
          child: const Text(
            "Azza Iqlal Istifaroh - 1915016060",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              letterSpacing: 3,
            ),
          ),
        ),
      ),
    );
  }
}
