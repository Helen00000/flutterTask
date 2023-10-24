import 'package:flutter/material.dart';
import 'package:dancing/widgets/bottom_bar.dart';


class Battle extends StatefulWidget {
  const Battle({super.key});

  @override
  State<Battle> createState() => BattleState();
}

class BattleState extends State<Battle> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('Батлы')
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}