import 'package:bloccleanexample/post/bloc/post_bloc.dart';
import 'package:bloccleanexample/post/data/post_api.dart';
import 'package:bloccleanexample/post/data/post_repository.dart';

class PostInjector {
  static provideBloc() => PostBloc(providePostRepository());

  static providePostRepository() => PostRepository(PostApi());
}
