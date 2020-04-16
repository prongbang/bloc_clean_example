import 'package:bloccleanexample/di/service_locator.dart';
import 'package:bloccleanexample/post/bloc/post_bloc.dart';
import 'package:bloccleanexample/post/data/local/post_local_datasource.dart';
import 'package:bloccleanexample/post/data/post_datasource.dart';
import 'package:bloccleanexample/post/data/post_repository.dart';
import 'package:bloccleanexample/post/data/remote/post_api.dart';
import 'package:bloccleanexample/post/data/remote/post_remote_datasource.dart';
import 'package:bloccleanexample/post/domain/get_post_list_usecase.dart';

class PostLocator {
  static register() {
    getIt.registerFactory<PostApi>(() => DefaultPostApi());
    getIt.registerFactory<PostDataSource>(
      () => PostLocalDataSource(),
      instanceName: PostLocalDataSource.NAME,
    );
    getIt.registerFactory<PostDataSource>(
      () => PostRemoteDataSource(getIt.get()),
      instanceName: PostRemoteDataSource.NAME,
    );
    getIt.registerFactory<PostRepository>(
      () => DefaultPostRepository(
        getIt.get(instanceName: PostRemoteDataSource.NAME),
        getIt.get(instanceName: PostLocalDataSource.NAME),
      ),
    );
    getIt.registerFactory<GetPostListUseCase>(
      () => DefaultGetPostListUseCase(getIt.get()),
    );
    getIt.registerFactory(() => PostBloc(getIt.get()));
  }
}
