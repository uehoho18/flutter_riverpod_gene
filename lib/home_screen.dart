import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_gene/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, child) {
      final name = ref.watch(nameProvider);
      return Scaffold(
        appBar: AppBar(),
        body: Consumer(
          builder: (context, ref, child) {
            return Column(
              children: [
                Center(
                  child: Text(name),
                ),
              ],
            );
          },
        ),
      );
    });
  }
}
