import 'package:flutter/material.dart';
import 'package:weather/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}



class _LoadingState extends State<Loading> {

  String time = 'Loading';

void setupWorldTime() async{
  WorldTime instance = WorldTime(location: 'India', flag: 'india.png', url: 'Asia/Kolkata');
  await instance.getTime();
  print(instance.time);
}



  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
      child: Text(time),
      )
    );
  }
}
