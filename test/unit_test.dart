import 'package:flutter_test/flutter_test.dart';
import 'package:your_app/models/flashcard.dart';
import 'package:your_app/data/adapters/flashcard_adapter.dart';

void main() {
  group('Flashcard Model Test', () {
    test('Flashcard creation test', () {
      final flashcard = Flashcard(question: 'What is 2 + 2?', answer: '4');
      expect(flashcard.question, 'What is 2 + 2?');
      expect(flashcard.answer, '4');
    });
    // Add more test cases for validation or other scenarios
  });

  group('Hive Adapter Test', () {
    test('FlashcardAdapter serialization and deserialization test', () {
      final adapter = FlashcardAdapter();
      final flashcard = Flashcard(question: 'What is 3 * 4?', answer: '12');
      final serialized = adapter.write(null, flashcard);
      final deserialized = adapter.read(null, serialized);

      expect(deserialized.question, 'What is 3 * 4?');
      expect(deserialized.answer, '12');
    });
    // Add more test cases as needed
  });
}
