import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "http://localhost:8080/"; //change this url for the actual api

  /// 🔹 POST request
  static Future<Map<String, dynamic>> post(
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    final url = Uri.parse("$baseUrl$endpoint");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );

    final body = jsonDecode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return body;
    } else {
      throw Exception(body['message'] ?? "Something went wrong");
    }
  }

  /// 🔹 GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final url = Uri.parse("$baseUrl$endpoint");

    final response = await http.get(url);

    final body = jsonDecode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return body;
    } else {
      throw Exception(body['message'] ?? "Failed to fetch");
    }
  }
}
