import 'package:flutter/material.dart';
import 'package:spotlas/util/item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<Item> feedData = [];
  bool loading = false;
  bool isAllLoaded = false;

  fetchFeedData() async {
    if (isAllLoaded) return;

    setState(() { loading = true; });

    var feedDataRequest = await http.get(Uri.parse('http://dev.api.spotlas.com/interview/feed?page=1'));
    var feedDataResponse = json.decode(feedDataRequest.body);

    for (var feedDataElement in feedDataResponse) {
      feedData.add(Item.fromJson(feedDataElement));
    }

    setState(() {
      loading = false;
      isAllLoaded = feedDataResponse.isEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchFeedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                Text(feedData[index].authorName, style: const TextStyle(fontSize: 20.00),),
                Text(feedData[index].authorTag),
                Image.network(feedData[index].authorImage),
                Text(feedData[index].spotName),
              ],
            ),
          );
        },
        itemCount: feedData.length,
      ),
    );
  }
}
