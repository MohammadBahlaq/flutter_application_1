import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class ApiService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  static Map<String, String> myHeader = {'Accept': '*/*'};

  static Future<List<dynamic>> get(
    String endpoint, {
    Map<String, String>? parameters,
    Map<String, String>? header,
  }) async {
    http.Response response;

    header ??= {};
    header.addAll(myHeader);

    final Uri uri = Uri.parse(
      '$_baseUrl/$endpoint',
    ).replace(queryParameters: parameters);

    response = await http.get(uri, headers: header);

    return jsonDecode(response.body);
  }

  static Future<Map<String, dynamic>> post(
    String endpoint, {
    Map<String, String>? body,
    Map<String, String>? header,
  }) async {
    http.Response response;

    header ??= {};
    header.addAll(myHeader);

    final Uri uri = Uri.parse('$_baseUrl/$endpoint');

    response = await http
        .post(uri, headers: header, body: jsonEncode(body))
        .timeout(Duration(seconds: 5));

    return jsonDecode(response.body);
  }
}
