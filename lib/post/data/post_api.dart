import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class PostApi {
  final _url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<dynamic>> getPostList() async {
    var response = await http.get(_url);
    return convert.jsonDecode(response.body);
  }
}
