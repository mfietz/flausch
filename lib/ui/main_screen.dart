import 'package:carousel_slider/carousel_slider.dart';
import 'package:flausch/services/reddit.dart';
import 'package:flausch/services/reddit_response.dart';
import 'package:flausch/ui/image_carousel_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ChildData> data = [];

  @override
  void initState() {
    super.initState();
    RedditService.getMedia("aww").then((value) {
      setState(() {
        data = value.data.children
            .where((element) {
              var url = element.data.url;
              return url.endsWith('.jpg') || url.endsWith('.gif');
            })
            .map((e) => e.data)
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          child: CarouselSlider.builder(
              viewportFraction: 1.0,
              height: double.infinity,
              itemCount: data.length,
              itemBuilder: (context, index) {
                var d = data[index];
                return ImageCarouselItem(
                  thumbnailUrl: d.thumbnail,
                  imageUrl: d.url,
                );
              }),
        ),
      ),
    );
  }
}
