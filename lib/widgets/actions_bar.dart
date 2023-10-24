import 'package:flutter/material.dart';


class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 100.0,
              color: Colors.red[300],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getProfilePicture(),
                  getSocialAction(title: 'likes', icon: Icons.favorite),
                  getSocialAction(title: 'comments', icon: Icons.comment),
                  getSocialAction(title: 'battles', icon: Icons.sports_mma),
                  getSocialAction(title: 'train', icon: Icons.sports_gymnastics),
                ]
                ),
            );
  }

  Widget getSocialAction({
    required String title,
    required IconData icon}) 
    {
      return SizedBox(
        width: 60.0,
        height: 60.0,
        child: Column(children: [
          Icon(icon, size: 35.0, color: Colors.grey[300],),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
          child: Text(title, style: const TextStyle(fontSize: 12.0),))
        ],),

      );

  }

  Widget getProfilePicture(){
    return const Positioned(
      
    height: 50,
    width: 50,
      child: Column(
        children: [
        CircleAvatar(backgroundColor: Colors.purple, radius: 25,),
        Padding(
        padding: EdgeInsets.only(top: 10.0),
        )
          ],), 
        );
  }
}