import 'package:flutter_spreadsheet/models/feedback_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Controller {
  final void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbxRZHOicIrfDdUbibpg-jelJ0vSirxQ0Hifa6Cvt3sPoEY8PUusdgmu9g/exec";
  static const STATUS_SUCCESS = "SUCCESS";

  Controller(this.callback);

  void submitForm(FeedbackModel model) async {
    try {
      await http.get(URL + model.toParams()).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
