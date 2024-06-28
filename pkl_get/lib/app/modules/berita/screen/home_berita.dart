//let's start by our home screen
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/breaking_news_card.dart';
import '../components/news_list_tile.dart';
import '../modules/news_model.dart';

class HomeBerita extends StatefulWidget {
  const HomeBerita({Key? key}) : super(key: key);

  @override
  State<HomeBerita> createState() => _HomeBeritaState();
}

class _HomeBeritaState extends State<HomeBerita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //let's start with the Appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Halaman Berita",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),

      //Let's now work on the body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Berita",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //let's build our caroussel
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      BreakingNews(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  )),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Berita Terbaru",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              //now let's create the cards for the recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}