import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'item_screens/item_screens.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen1())),
              color: Colors.red,
              text: 'Button1B'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen2())),
              color: Colors.black,
              text: 'Button2B'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen3())),
              color: Colors.purple,
              text: 'Button3B'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen4())),
              color: Colors.yellow,
              text: 'Button4B'),
        ],
      ),
    );
  }
}