import 'package:bloccleanexample/post/post_injector.dart';
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
      body: BlocProvider(
        create: PostInjector.provideBloc(),
        child: PostWidget(),
      ),
    );
  }
}
