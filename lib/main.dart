import 'package:flutter/material.dart';
import 'package:study_buddy/flash_card_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FlashcardAdapter());
  // Hive initialization code
  runApp(MyApp());
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
      home: const FlashcardView(),
    );
  }
}

