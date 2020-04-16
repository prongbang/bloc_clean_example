import 'package:bloccleanexample/di/service_locator.dart';
import 'package:bloccleanexample/post/bloc/post_bloc.dart';
import 'package:bloccleanexample/post/presentation/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BloC Demo"),
      ),
      body: BlocProvider<PostBloc>(
        create: (context) => getIt.get<PostBloc>(),
        child: PostWidget(),
      ),
    );
  }
}
