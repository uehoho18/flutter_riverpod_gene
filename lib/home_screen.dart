import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_gene/main.dart';
import 'package:flutter_riverpod_gene/user.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  String userNo = '1';

  @override
  Widget build(BuildContext context) {
    return ref
        .watch(
            fetchUserProvider(input: userNo, someValue: 1, secoundValue: false))
        .when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              TextField(
                onSubmitted: (value) => setState(() {
                  userNo = value;
                }),
              ),
              Center(
                child: Text(data.name),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: ref.watch(streamProvider).when(
            data: (data) {
              return Text(data.toString());
            },
            error: (error, stackTrace) {
              return Center(
                child: Text(error.toString()),
              );
            },
            loading: () {
              return Scaffold(
                appBar: AppBar(),
                body: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
