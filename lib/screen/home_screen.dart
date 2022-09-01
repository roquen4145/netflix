import 'package:flutter/material.dart';
import 'package:netflix/widget/carousel_slider.dart';

import '../model/model_movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    })
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(children: [CarouselImage(movies: movies), TopBar()])
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/netflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                'TV 프로그램',
                style: TextStyle(fontSize: 14),
              )),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                '영화',
                style: TextStyle(fontSize: 14),
              )),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text(
                '내가 찜한 콘텐츠',
                style: TextStyle(fontSize: 14),
              ))
        ],
      ),
    );
  }
}