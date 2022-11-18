import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mb_report/models/login_model.dart';
class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "http://139.59.253.84:3040/v2/user/login";
    final res = await http.post(Uri.parse(url), body: requestModel.toJson());
    if (res.statusCode == 200 || res.statusCode == 400 || res.statusCode == 401) {
      print(res.statusCode);
      print(res.body);
      return LoginResponseModel.fromJson(
        json.decode(res.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
