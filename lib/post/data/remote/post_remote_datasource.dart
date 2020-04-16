import 'package:bloccleanexample/post/data/post_datasource.dart';
import 'package:bloccleanexample/post/data/remote/post_api.dart';

class PostRemoteDataSource implements PostDataSource {
  static const NAME = "PostRemoteDataSource";
  final PostApi postApi;

  PostRemoteDataSource(this.postApi);

  @override
  Future<List> getPostList() => postApi.getPostList();

  @override
  void addPost(List<dynamic> posts) {}
}
