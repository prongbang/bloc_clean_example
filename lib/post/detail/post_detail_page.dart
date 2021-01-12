import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final dynamic post;

  const PostDetailPage({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (post['title']).toString().toUpperCase(),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListTile(
        title: Text((post['title']).toString().toUpperCase()),
        subtitle: Text(post['body']),
      ),
    );
  }
}
