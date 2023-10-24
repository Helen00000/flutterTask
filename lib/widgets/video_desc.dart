import 'package:flutter/material.dart';

class VideoDesc extends StatelessWidget {
  const VideoDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70.0,
        padding: EdgeInsets.all(5.0),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('text', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('data'),
    ],
      )
      )
      
      );
  }
}