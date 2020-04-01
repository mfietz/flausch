import 'package:flausch/services/reddit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget body = Placeholder();

  @override
  void initState() {
    super.initState();
    RedditService.getMedia("aww").then((value) {
      setState(() {
        var urls = value.data.children
            .where((element) => element.data.url.endsWith('.jpg'))
            .map((e) => e.data.url)
            .toList();
        body = ListView.builder(
            itemCount: urls.length,
            itemBuilder: (context, index) => Image.network(urls[index]));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: body);
  }
}
