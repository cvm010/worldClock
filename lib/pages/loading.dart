import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



    // void getTime() async {
    //   try {
    //     http.Response response = await http.get(Uri.parse('https://www.worldtimeapi.org/api/timezone/Asia/Kolkata'));
    //
    //     if (response.statusCode == 200) {
    //       Map data = jsonDecode(response.body);
    //       print(data);
    //     } else {
    //       print('Failed to load data: ${response.statusCode}');
    //     }
    //   } catch (e) {
    //     print('Error: $e');
    //   }
    // }


    void getTime() async {
    http.Response response = await http.get(Uri.parse('https://www.worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map data = jsonDecode(response.body);
    print(data);
  }


  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}
