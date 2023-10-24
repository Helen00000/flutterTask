import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    //ifActiveSavesButton() {}

  
    return Row(
      children: [
        
        //лента видосов
        Material(
          
          child: InkWell(
            onTap: () {
               Navigator.of(context).pushNamed('/video_feed');
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.abc),
              ),
            ),
          ),
        ),
        //батлы
       Material(
          child: InkWell(
            onTap: () {
               Navigator.of(context).pushNamed('/battle');
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.sports_mma),
              ),
            ),
          ),
        ),
        //упражняться
        Material(
          child: InkWell(
            onTap: () {
               Navigator.of(context).pushNamed('/train');
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.sports_gymnastics),
              ),
            ),
          ),
        ),
        //профиль
        Material(
          child: InkWell(
            onTap: () {
               Navigator.of(context).pushNamed('/');
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Icon(Icons.person),
              ),
            ),
          ),
        ),
      ],
    );
  }
}