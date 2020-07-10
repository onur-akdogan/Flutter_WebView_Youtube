import 'package:flutter/material.dart';
import 'package:youtubemod/filimler.dart';
import 'package:youtubemod/oyunlar.dart';
import 'package:youtubemod/youtube.dart';
import 'package:youtubemod/youtube_muzik.dart';
import 'youtube.dart';

class GirisPage extends StatefulWidget {
  @override
  _GirisPageState createState() => _GirisPageState();
}

class _GirisPageState extends State<GirisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/(10/1),
            width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight: Radius.circular(50)),
            color: Colors.red,
          ),
          child: Center(child: Text("YOUTUBE MOD",style: TextStyle(color: Colors.white, fontSize: 20),),),
          ),
          Container(
            height: MediaQuery.of(context).size.height/(10/9),
            width: MediaQuery.of(context).size.width,
            child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("YouTube Anasayfa"),
                    subtitle: Text("Youtube anasayfası"),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Yanasayfa(),)),                  
                  
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.music_video),

                    title: Text("YouTube MÜZİK"),
                    subtitle: Text("Müzik Dinle"),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Ymuzik(),)),                  
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.fiber_new),

                    title: Text("YouTube Trendler"),
                    subtitle: Text("Trenler"),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Ymuzik(),)),                  
                  ),
                  Divider(),
                    ListTile(
                    leading: Icon(Icons.gamepad),

                    title: Text("YouTube Oyunlar"),
                    subtitle: Text("Oyunlar"),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Oyunlar(),)),                  
                  ),
                  Divider(),
                    ListTile(
                    leading: Icon(Icons.live_tv),

                    title: Text("YouTube Filmler"),
                    subtitle: Text("Filmler"),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Filmler(),)),                  
                  ),
                ],
              ),
          
          ),
        ],
      ),
  
    );
  }
}