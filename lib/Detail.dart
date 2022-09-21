import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  int albumId;

  String title;
  String url;
  String thumbnailUrl;

  DetailPage(this.albumId, this.title, this.url,this.thumbnailUrl);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailPage'),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Image(image: NetworkImage(widget.url)),
          ),
          SizedBox(height: 20,),
          Text(
            widget.title,
            style: TextStyle(
            fontSize: 19,
            color: Colors.blue
          ),),
          SizedBox(height: 20,),
          Text(widget.url)
          ],
        ),
      ),
    );
  }
}
