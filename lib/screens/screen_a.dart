import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'item_screens/item_screens.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen1())),
              color: Colors.red,
              text: 'Button1A'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen2())),
              color: Colors.black,
              text: 'Button2A'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen3())),
              color: Colors.purple,
              text: 'Button3A'),
          CustomButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ItemScreen4())),
              color: Colors.yellow,
              text: 'Button4A'),
        ],
      ),
    );
  }
}
