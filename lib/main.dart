import 'package:flutter/material.dart';
import 'package:youtubemod/youtube.dart';

import 'navigasyon_islemleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube MOD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GirisPage(),
    );
  }
}

