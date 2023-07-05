import 'package:flutter/material.dart' ;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Home Screen"),
        ),
        body: Center(
          child: Container(
            child: Center(child: Text("Onboarding Screen Complete",style: TextStyle(fontSize: 20),)),
          ),
        ),
      ),
    );
  }
}
