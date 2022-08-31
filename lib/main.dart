import 'package:flutter/material.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DdoFlix',
        theme: ThemeData(
            brightness: Brightness.dark, primaryColor: Colors.black, accentColor: Colors.white
        ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body:TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                    child:Center(child: Text('home'))
                ),
                Container(
                    child:Center(child: Text('search'))
                ),
                Container(
                    child:Center(child: Text('save'))
                ),
                Container(
                    child:Center(child: Text('more'))
                )
              ],
            ),
              bottomNavigationBar: BottomBar(),
          )
      )
    );
  }
}
