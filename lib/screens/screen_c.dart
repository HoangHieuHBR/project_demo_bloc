import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'item_screens/item_screens.dart';

class ScreenC extends StatefulWidget {
  const ScreenC({super.key});

  @override
  State<ScreenC> createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen1())),
              color: Colors.red,
              text: 'Button1C'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen2())),
              color: Colors.black,
              text: 'Button2C'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen3())),
              color: Colors.purple,
              text: 'Button3C'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen4())),
              color: Colors.yellow,
              text: 'Button4C'),
        ],
      ),
    );
  }
}
