import 'package:flutter/material.dart';
import 'package:dancing/widgets/bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home>
    {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dancing'),
        centerTitle: true,
      ),
      body: const SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Text('Name'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  CircleAvatar(backgroundColor: Colors.purple, radius: 50,),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.favorite),
                          Text('2'),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Column(
                        children: [
                          Icon(Icons.sports_mma_sharp),
                          Text('2')
                        ],
                      )
                    ],
                  )
                ],
              )

            ]
          )
      
        

      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}