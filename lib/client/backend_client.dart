import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

class BackendClient {
  final http.Client httpClient;

  BackendClient({http.Client? httpClient}) : httpClient = httpClient ?? http.Client();

  Future<dynamic> getData({required String uri, required String path, Map<String, dynamic>? queryParams}) async {
    final Uri url = Uri.http(uri, path, queryParams);
    try {
      var response = await httpClient.get(url);
      dynamic data = jsonDecode(response.body);

      if (response.statusCode == HttpStatus.ok) {
        return data;
      } else {
        return 'HTTP Request failed with status: ${response.statusCode}';
      }
    } catch (e) {
      print('Error during HTTPrequest $e');
      return 'Error during HTTP request: $e';
    }
  }

  Future<dynamic> postData({required String uri, required String path, dynamic body}) async {
    try {
      final Uri url = Uri.http(uri, path);
      final response = await httpClient.post(
        url,
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == HttpStatus.created) {
        print('Post executed successfully');
        return jsonDecode(response.body);
      } else {
        String errorMessage = 'Failed to execute Post Request. Status code: ${response.statusCode}';
        print(errorMessage);
        return errorMessage;
      }
    } catch (e) {
      print('Error during HTTP request: $e');
      rethrow;
    }
  }

  Future<dynamic> putData({
    required String uri,
    required String path,
    dynamic body,
  }) async {
    try {
      final Uri url = Uri.http(uri, path);
      final response = await httpClient.put(
        url,
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == HttpStatus.created) {
        print('Put executed successfully');
        return jsonDecode(response.body);
      } else {
        String errorMessage = 'Failed to execute Put Request. Status code: ${response.statusCode}';
        print(errorMessage);
        return errorMessage;
      }
    } catch (e) {
      print('Error during HTTP request: $e');
      rethrow;
    }
  }

  Future<dynamic> deleteData({
    required String uri,
    required String path,
  }) async {
    try {
      final Uri url = Uri.http(uri, path);
      final response = await httpClient.delete(
        url,
        headers: headers,
      );

      if (response.statusCode == HttpStatus.accepted) {
        print('Delete executed successfully');
        return null;
      } else {
        final String errorMessage = 'Failed to execute Delete Request. Status code: ${response.statusCode}';
        print(errorMessage);
        return errorMessage;
      }
    } catch (e) {
      print('Error during HTTP request: $e');
      rethrow;
    }
  }
}
