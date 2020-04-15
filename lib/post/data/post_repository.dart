import 'package:bloccleanexample/post/data/post_api.dart';

class PostRepository {
  final PostApi postApi;

  PostRepository(this.postApi);

  Future<List<dynamic>> getPostList() async {
    return postApi.getPostList();
  }
}
