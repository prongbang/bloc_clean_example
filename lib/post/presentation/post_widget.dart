import 'package:bloccleanexample/post/bloc/post_event.dart';
import 'package:bloccleanexample/post/bloc/post_state.dart';
import 'package:bloccleanexample/post/presentation/post_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  void initState() {
    BlocProvider.of(context).add(FetchPost());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        if (state is PostLoading) {
          return CircularProgressIndicator();
        }
        if (state is PostLoaded) {
          return PostListWidget(items: state.items);
        }
        return Text('Something went wrong!');
      },
    );
  }
}
