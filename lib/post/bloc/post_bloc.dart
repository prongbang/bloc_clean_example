import 'package:bloccleanexample/post/bloc/post_event.dart';
import 'package:bloccleanexample/post/bloc/post_state.dart';
import 'package:bloccleanexample/post/data/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;

  PostBloc(this.postRepository);

  @override
  PostState get initialState => PostLoading();

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is FetchPost) {
      try {
        final items = await postRepository.getPostList();
        PostLoaded(items);
      } catch (_) {
        yield PostError();
      }
    }
  }
}
