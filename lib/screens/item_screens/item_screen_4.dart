import 'package:bloc_project_demo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ItemScreen4 extends StatefulWidget {
  const ItemScreen4({super.key});

  @override
  State<ItemScreen4> createState() => _ItemScreen4State();
}

class _ItemScreen4State extends State<ItemScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Screen 4'),
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
