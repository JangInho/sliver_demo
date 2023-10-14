import 'package:flutter/material.dart';

class ItemExample extends StatelessWidget {

  final int index;

  const ItemExample({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        color: Colors.green,
        child: ListTile(
          title: Text(
            '$index !!!!!!! ',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
