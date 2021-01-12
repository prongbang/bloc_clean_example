import 'package:bloccleanexample/post/bloc/post_event.dart';
import 'package:bloccleanexample/post/bloc/post_state.dart';
import 'package:bloccleanexample/post/domain/get_post_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPostListUseCase getPostListUseCase;

  PostBloc(PostState initialState, this.getPostListUseCase)
      : super(initialState);

  @override
  PostState get initialState => PostLoading();

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is FetchPost) {
      try {
        yield PostLoaded(await getPostListUseCase.execute(null));
      } catch (_) {
        yield PostError();
      }
    }
  }
}
