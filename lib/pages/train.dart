import 'package:flutter/material.dart';
import 'package:dancing/widgets/bottom_bar.dart';

class Train extends StatefulWidget {
  const Train({super.key});

  @override
  State<Train> createState() => TrainState();
}

class TrainState extends State<Train> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('Тренировки')
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}