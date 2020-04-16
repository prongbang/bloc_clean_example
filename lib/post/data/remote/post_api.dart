import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

abstract class PostApi {
  Future<List> getPostList();
}

class DefaultPostApi implements PostApi {
  final _url = "https://jsonplaceholder.typicode.com/posts";

  Future<List> getPostList() async {
    var response = await http.get(_url);
    final data = convert.jsonDecode(response.body);
    return data;
  }
}
