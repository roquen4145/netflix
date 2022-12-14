import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/screen/like_screen.dart';
import 'package:netflix/screen/more_screen.dart';
import 'package:netflix/screen/search_screen.dart';
import 'package:netflix/widget/bottom_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DdoFlix',
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(
                    brightness: Brightness.dark,
                    primary: Colors.black,
                    secondary: Colors.white)),
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HomeScreen(),
                  SearchScreen(),
                  LikeScreen(),
                  MoreScreen()
                ],
              ),
              bottomNavigationBar: BottomBar(),
            )));
  }
}
