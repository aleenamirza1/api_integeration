import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  String baseUrl = "https://jsonplaceholder.typicode.com/users";
  int? userId;
  getUsersData() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    return users;
  }

  getUsersDataById() async {
    var url = Uri.parse(baseUrl + '/${this.userId}');
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    return users;
  }
}
