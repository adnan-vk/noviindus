import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiService {
  static String apiUrl = "https://flutter-amr.noviindus.in/api";
  List<Map<String, dynamic>> patients = [];
  Future<String?> loginUser(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse('https://flutter-amr.noviindus.in/api/Login'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final token = responseData['token'];
        return token;
      } else {
        log('Failed to login. Status code: ${response.body}');
        return null;
      }
    } catch (e) {
      log('Error during login: $e');
      return null;
    }
  }

  Future fetchData(String token) async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl/PatientList'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        log('Data received: ${response.body}');
        patients =
            data.map((patient) => patient as Map<String, dynamic>).toList();
      } else {
        log('Failed to fetch data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching data: $e');
    }
  }
}
