import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://10.0.2.2:8080/api"; //temporary update later

  Future<String> getHello() async {
    //this one Uri.parse will turn out url to http object
    final url = Uri.parse('$baseUrl/hello');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
