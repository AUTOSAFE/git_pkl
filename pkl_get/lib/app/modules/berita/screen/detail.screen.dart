import 'package:flutter/material.dart';
import '../modules/news_model.dart';

class DetailsScreen extends StatelessWidget {
  final NewsData data;

  DetailsScreen(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.orange.shade900),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title!,
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              data.author!,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Hero(
              tag: "${data.title}",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(data.urlToImage!),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              data.content!,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
