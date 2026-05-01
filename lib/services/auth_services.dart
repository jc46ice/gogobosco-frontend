import 'api_service.dart';

class AuthService {
  /// LOGIN
  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    return await ApiService.post("/login", {
      "email": email,
      "password": password,
    });
  }

  /// REGISTER
  static Future<Map<String, dynamic>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String password,
    required String role,
  }) async {
    return await ApiService.post("/register", {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "phone": phone,
      "password": password,
      "role": role,
    });
  }
}
