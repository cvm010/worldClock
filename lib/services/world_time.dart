import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {

  String location;
  String? time;
  String flag;
  String  url;

  WorldTime({required this.location,required this.flag,required this.url});

 Future<void> getTime() async {
    http.Response response = await http.get(Uri.parse('https://www.worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    // print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // print('Date today is -> ${now}');

    time = now.toString();


  }

}