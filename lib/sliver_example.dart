import 'package:flutter/material.dart';
import 'package:sliver_demo/item_example.dart';

class SliverExample extends StatelessWidget {
  const SliverExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: const Text('Sliver'),
            pinned: true,
            // floating: true,
            // snap: true,
            expandedHeight: 100,
            stretch: true,
            onStretchTrigger: () async {
              print('zzzzzzzzzzz');
            },
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('test'),
              background: Container(
                color: Colors.red,
              ),

            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10000,
            (context, index) => ItemExample(index: index),
          ))
        ],
      ),
    );
  }
}
