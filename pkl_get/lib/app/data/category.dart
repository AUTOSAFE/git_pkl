import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryList(
            press: () {},
            imagePath: 'assets/icon/medical-team.png',
            text: 'Kesehatan',
          ),
          SizedBox(width: 20),
          CategoryList(
            press: () {},
            imagePath: 'assets/icon/people.png',
            text: 'Kependudukan',
          ),
          SizedBox(width: 20),
          CategoryList(
            press: () {},
            imagePath: 'assets/icon/school.png',
            text: 'Pendidikan',
          ),
          SizedBox(width: 20),
          CategoryList(
            press: () {},
            imagePath: 'assets/icon/bus-stop.png',
            text: 'Transportasi',
          ),
          SizedBox(width: 20),
          CategoryList(
            press: () {},
            imagePath: 'assets/icon/reporting.png',
            text: 'Laporan dan Kedaruratan',
          ),
          SizedBox(width: 20),
          CategoryList(
            press: () {},
            imagePath: 'assets/icon/save-the-planet.png',
            text: 'Lingkungan',
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imagePath;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Chip(
          backgroundColor: Colors.white,
          label: Row(
            children: [
              Image.asset(imagePath, width: 32, height: 32),
              SizedBox(width: 20),
              Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
