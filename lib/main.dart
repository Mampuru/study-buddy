import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'flash_card_view.dart';
import 'hive_adapters/flash_card_adapter.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Buddy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FlashcardView(),
    );
  }
}

