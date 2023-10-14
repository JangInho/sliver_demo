import 'package:flutter/material.dart';
import 'package:sliver_demo/item_example.dart';

class SingleChildScrollViewExample extends StatefulWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  State<SingleChildScrollViewExample> createState() => _SingleChildScrollViewExampleState();
}

class _SingleChildScrollViewExampleState extends State<SingleChildScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    print('🎇SingleChildView build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView Ex'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(20, (index) {
              /// SingleChildScrollView 는 화면에 보이는 부분만 그리지 않고 미리 다 그려둔다.
              print('🐽item $index');
              return ItemExample(index: index);
            }),
          ],
        ),
      ),
    );
  }
}
