import 'package:flutter/material.dart';

class PostListWidget extends StatefulWidget {
  final List<dynamic> items;

  const PostListWidget({Key key, this.items}) : super(key: key);

  @override
  _PostListWidgetState createState() => _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(widget.items[index]['title']),
          subtitle: Text(widget.items[index]['body']),
        );
      },
    );
  }
}
