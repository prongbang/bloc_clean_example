import 'package:bloccleanexample/post/post_locator.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  static register() {
    PostLocator.register();
  }
}
