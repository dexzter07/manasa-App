import 'package:http/http.dart' as http;
import 'package:manasa/models/contestant_response.dart';

class ContestantService {
  static var client = http.Client();

  static Future<List<ContestantList>> fetchEvents() async {
    var response = await client.get(
        "http://neeyaraproduction.com/admin/api_list.php",
        headers:{"Keep-Alive":"1000"}
    );
    if (response.statusCode == 200) {
      var jsonResponse = contestantListFromJson(response.body);

      print(response.body);
      return jsonResponse;
    }
    else{
      return null;
    }
  }
}