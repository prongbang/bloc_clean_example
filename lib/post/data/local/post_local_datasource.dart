import 'package:bloccleanexample/post/data/post_datasource.dart';

class PostLocalDataSource implements PostDataSource {
  static const NAME = "PostLocalDataSource";
  List _posts = [];

  @override
  Future<List> getPostList() => Future.value(_posts);

  @override
  void addPost(List<dynamic> posts) {
    _posts = posts;
  }
}
