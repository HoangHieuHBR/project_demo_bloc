import 'package:bloc_project_demo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ItemScreen2 extends StatefulWidget {
  const ItemScreen2({super.key});

  @override
  State<ItemScreen2> createState() => _ItemScreen2State();
}

class _ItemScreen2State extends State<ItemScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Screen 2'),
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
