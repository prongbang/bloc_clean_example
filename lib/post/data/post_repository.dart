import 'package:bloccleanexample/post/data/post_datasource.dart';

abstract class PostRepository {
  Future<List> getPostList();
}

class DefaultPostRepository implements PostRepository {
  final PostDataSource postRemoteDataSource;
  final PostDataSource postLocalDataSource;

  DefaultPostRepository(this.postRemoteDataSource, this.postLocalDataSource);

  Future<List> getPostList() async {
    final posts = await postLocalDataSource.getPostList();
    if (posts.length == 0) {
      final postList = await postRemoteDataSource.getPostList();
      postLocalDataSource.addPost(postList);
      return postList;
    }
    return posts;
  }
}
