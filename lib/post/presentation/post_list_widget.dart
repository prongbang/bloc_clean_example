import 'package:bloccleanexample/post/detail/post_detail_page.dart';
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
    return ListView.separated(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text((widget.items[index]['title']).toString().toUpperCase()),
          subtitle: Text(widget.items[index]['body']),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostDetailPage(
                  post: widget.items[index],
                ),
              ),
            );
          },
        );
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
