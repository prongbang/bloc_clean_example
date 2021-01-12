import 'package:bloccleanexample/post/bloc/post_bloc.dart';
import 'package:bloccleanexample/post/bloc/post_state.dart';
import 'package:bloccleanexample/post/data/local/post_local_datasource.dart';
import 'package:bloccleanexample/post/data/post_datasource.dart';
import 'package:bloccleanexample/post/data/post_repository.dart';
import 'package:bloccleanexample/post/data/remote/post_api.dart';
import 'package:bloccleanexample/post/data/remote/post_remote_datasource.dart';
import 'package:bloccleanexample/post/domain/get_post_list_usecase.dart';
import 'package:get_it/get_it.dart';

class PostLocator {
  static register() {
    GetIt.I.registerFactory<PostApi>(() => DefaultPostApi());
    GetIt.I.registerFactory<PostDataSource>(
      () => PostLocalDataSource(),
      instanceName: PostLocalDataSource.NAME,
    );
    GetIt.I.registerFactory<PostDataSource>(
      () => PostRemoteDataSource(GetIt.I.get()),
      instanceName: PostRemoteDataSource.NAME,
    );
    GetIt.I.registerFactory<PostRepository>(
      () => DefaultPostRepository(
        GetIt.I.get(instanceName: PostRemoteDataSource.NAME),
        GetIt.I.get(instanceName: PostLocalDataSource.NAME),
      ),
    );
    GetIt.I.registerFactory<GetPostListUseCase>(
      () => DefaultGetPostListUseCase(GetIt.I.get()),
    );
    GetIt.I.registerFactory(() => PostBloc(PostLoading(), GetIt.I.get()));
  }
}
