import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

 void getData() async {
   // simulate a network request
   // like async code
  await Future.delayed(Duration(seconds: 3), () {
     print('Name printing');
   });

 }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title : Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body:Text('something'),
    );
  }
}