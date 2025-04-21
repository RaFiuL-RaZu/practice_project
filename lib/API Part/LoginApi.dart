import 'dart:developer';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<void> Service() async {
    Uri uri = Uri.parse(
      "https://api.advocateoffice-codecanyon.classicitltd.com/api/login",
    );
    var a={
      'email_phone':'superadmin@gmail.com',
      'password':'12345678',
    };
    var response = await http.get(uri);
    log("========${response.statusCode}");
  }
}
