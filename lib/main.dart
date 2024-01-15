import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_gene/home_screen.dart';
import 'package:flutter_riverpod_gene/logger_riverpod.dart';
import 'package:flutter_riverpod_gene/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main.g.dart';

@riverpod
Future<User> fetchUser(
  FetchUserRef ref, {
  required input,
  required int someValue,
  required bool secoundValue,
}) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchUserData(input);
}

// final fetchUserProveider =
//     FutureProvider.family.autoDispose((ref, String input) {
//   final userRepository = ref.watch(userRepositoryProvider);
//   return userRepository.fetchUserData(input);
// });

final streamProvider = StreamProvider.autoDispose((ref) async* {
  yield [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
});

void main() {
  runApp(ProviderScope(observers: [
    LoggerRiverpod(),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
