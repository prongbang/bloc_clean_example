import 'package:bloccleanexample/core/usecase.dart';
import 'package:bloccleanexample/post/data/post_repository.dart';

abstract class GetPostListUseCase extends UseCase<Object, Future<List>> {}

class DefaultGetPostListUseCase implements GetPostListUseCase {
  final PostRepository postRepository;

  DefaultGetPostListUseCase(this.postRepository);

  @override
  Future<List> execute(Object params) => postRepository.getPostList();
}
