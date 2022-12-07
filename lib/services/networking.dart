import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper{
  var url;
  NetworkHelper({required this.url});
  Future getWeatherlonglat() async{
    http.Response response = await http.get(Uri.parse(url));
    var decodedJson=jsonDecode(response.body);
    return decodedJson;
  }
}

// const apikey='41fa1d4ad7e1edff5d200075b860725d';
// const website='https://api.openweathermap.org/data/2.5/weather';
// $website?lat=$latitude&lon=$longitude&units=metric&appid=$apikey