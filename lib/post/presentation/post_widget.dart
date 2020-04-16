import 'package:bloccleanexample/post/bloc/post_bloc.dart';
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
    BlocProvider.of<PostBloc>(context).add(FetchPost());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if (state is PostLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PostLoaded) {
          return PostListWidget(items: state.items);
        }
        return Center(child: Text('Something went wrong!'));
      },
    );
  }
}
