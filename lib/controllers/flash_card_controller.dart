import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:study_buddy/models/flashcard.dart';

class FlashcardController extends GetxController {
  var flashcards = <Flashcard>[].obs;

  @override
  void onInit() {
    fetchFlashcardsFromHive(); // Fetch flashcards when the controller initializes
    super.onInit();
  }

  void addFlashcard(Flashcard card) {
    flashcards.add(card);
  }

  Future<void> fetchFlashcardsFromHive() async {
    final box = await Hive.openBox<Flashcard>('flashcardsBox');
    flashcards.assignAll(box.values.toList());
  }

}

