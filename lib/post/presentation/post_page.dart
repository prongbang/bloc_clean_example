import 'package:bloccleanexample/post/bloc/post_bloc.dart';
import 'package:bloccleanexample/post/presentation/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BloC Demo"),
      ),
      body: SafeArea(
        child: BlocProvider<PostBloc>(
          create: (context) => GetIt.I.get<PostBloc>(),
          child: PostWidget(),
        ),
      ),
    );
  }
}
