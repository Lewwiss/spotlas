import 'package:flutter/material.dart';
import 'package:spotlas/util/item.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:spotlas/components/author.dart';
import 'package:spotlas/components/spot.dart';
import 'package:spotlas/components/toolbar.dart';
import 'package:spotlas/components/caption.dart';
import 'package:spotlas/components/tags.dart';
import 'package:spotlas/components/date.dart';
import 'package:spotlas/components/media.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final controller = ScrollController();
  List<Item> feedData = [];
  bool loading = false;
  bool isAllLoaded = false;
  int feedDataPage = 1;

  fetchFeedData() async {
    if (isAllLoaded) return;

    setState(() { loading = true; });

    var feedDataRequest = await http.get(Uri.parse('http://dev.api.spotlas.com/interview/feed?page=$feedDataPage'));
    var feedDataResponse = json.decode(feedDataRequest.body);

    for (var feedDataElement in feedDataResponse) {
      setState(() {
        feedData.add(Item.fromJson(feedDataElement));
      });
    }

    setState(() {
      loading = false;
      isAllLoaded = feedDataResponse.isEmpty;
      //feedDataPage++;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchFeedData();

    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetchFeedData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        titleTextStyle: const TextStyle(
          fontSize: 18.00,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'SFProDisplay',
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.00,
      ),
      body: ListView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            elevation: 0.00,
            margin: const EdgeInsets.all(0.00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  fit: StackFit.loose,
                  children: [
                    Media(feedData[index].media),
                    Positioned(top: 0.00, child: Author(feedData[index].authorName, feedData[index].authorTag, feedData[index].authorImage)),
                    Positioned(bottom: 0.00, child: Spot(feedData[index].spotName, feedData[index].spotLocation, feedData[index].spotImage)),
                  ],
                ),
                const Toolbar(),
                Caption(feedData[index].authorTag, feedData[index].caption),
                Tags(feedData[index].tags),
                Date(feedData[index].date),
              ],
            ),
          );
        },
        itemCount: feedData.length,
      ),
    );
  }
}
