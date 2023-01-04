import 'package:flutter/material.dart';
import '/song_page.dart';

void main()
{
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongPage(),
    );
  }
}