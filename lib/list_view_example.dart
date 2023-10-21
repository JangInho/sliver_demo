import 'package:flutter/material.dart';
import 'package:sliver_demo/item_example.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    print('🎇SingleChildView build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Ex'),
      ),
      body: ListView.builder(
          itemCount: 10000,
          itemBuilder: (context, index) {
            print('🐽item $index');
            return ItemExample(index: index);
          }),
    );
  }
}
