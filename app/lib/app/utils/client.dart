import 'dart:convert';
import 'package:http/http.dart' as http;

String path = 'http://192.168.0.14';

class Client {
  Future<Map<String, dynamic>> post({
    required Map<String, String> data,
    required String route,
    String token = '',
  }) async {
    var uri = Uri.parse('$path$route');
    var response = await http.post(
      uri,
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token,
      },
    );

    return jsonDecode(response.body);
  }

  Future<List<dynamic>> getTasks({
    required String token,
    required String route,
  }) async {
    var uri = Uri.parse('$path$route');
    var response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token,
      },
    );

    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> updateTask({
    required Map<String, dynamic> task,
    required String token,
    required int taskId,
  }) async {
    var uri = Uri.parse('$path/task/$taskId');
    var response = await http.put(
      uri,
      body: jsonEncode(task),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token,
      },
    );

    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> deleteTask({
    required String token,
    required int taskId,
  }) async {
    var uri = Uri.parse('$path/task/$taskId');
    var response = await http.delete(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token,
      },
    );

    return jsonDecode(response.body);
  }
}
