import 'package:bloc_project_demo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ItemScreen3 extends StatefulWidget {
  const ItemScreen3({super.key});

  @override
  State<ItemScreen3> createState() => _ItemScreen3State();
}

class _ItemScreen3State extends State<ItemScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Screen 3'),
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
