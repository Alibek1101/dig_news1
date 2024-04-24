
import 'dart:convert';

import 'package:http/http.dart';

import '../model/post_model.dart';

class HttpService {
  static String BASE = 'jsonplaceholder.typicode.com';
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8'
  };

  // HTTPs Apis //

  static String API_LIST = "/posts"; //Get
  static String API_CREATE = "/posts"; //Post
  static String API_UPDATE = "/posts/"; //id  //PUT
  static String API_DELETE = "/posts/"; //id  //Delete


  static Future<String?> GET(String api, Map<String, String> params) async {
    var url = Uri.https(BASE, api, params);
    var response = await get(url,headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> POST(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, API_LIST);
    var response = await post(uri, headers: headers, body: jsonEncode(params));
    if (response.statusCode == 201 || response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> PUT(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, API_LIST);
    var response = await put(uri, headers: headers, body: jsonEncode(params));
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> DEL(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, API_LIST, params); //request
    var response = await delete(uri, headers: headers); //response
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = {};
    return params;
  }

  static Map<String, String> paramsCreate(Post post) {
    Map<String, String> params = {};
    params.addAll({
      'userId': post.userId.toString(),
      'title': post.title!,
      'body': post.body!
    });
    return params;
  }

  static Map<String, String> paramsUpdate(Post post) {
    Map<String, String> params = {};
    params.addAll({
      'userId': post.userId.toString(),
      'id': post.id.toString(),
      'title': post.title!,
      'body': post.body!
    });
    return params;
  }
}
