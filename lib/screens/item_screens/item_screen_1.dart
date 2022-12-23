import 'package:bloc_project_demo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ItemScreen1 extends StatefulWidget {
  const ItemScreen1({super.key});

  @override
  State<ItemScreen1> createState() => _ItemScreen1State();
}

class _ItemScreen1State extends State<ItemScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Screen 1'),
        centerTitle: true,
      ),
      body: Center(
        child: CustomButton(
          onPressed: () => Navigator.of(context).pop(),
          text: 'Go back',
          
        ),
      ),
    );
  }
}
