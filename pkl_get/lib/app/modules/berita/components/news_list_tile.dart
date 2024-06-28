import 'package:flutter/material.dart';
import '../modules/news_model.dart';
import '../screen/detail.screen.dart';

class NewsListTile extends StatefulWidget {
  final NewsData data;

  NewsListTile(this.data, {Key? key}) : super(key: key);

  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(widget.data),
          ),
        );
      },
      child: Material(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 20.0),
          padding: EdgeInsets.all(12.0),
          height: 130,
          decoration: BoxDecoration(
            color: Color.fromARGB(207, 211, 201, 201),
            borderRadius: BorderRadius.circular(26.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: Hero(
                  tag: "${widget.data.title}",
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(widget.data.urlToImage!),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                  children: [
                    Text(
                      widget.data.title!,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.data.content!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
