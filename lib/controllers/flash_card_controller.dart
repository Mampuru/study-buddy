import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../models/flash_card_model.dart';

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

  void goToPrevious() {
    //TODO complete the code here
  }

  void goToNext() {
    //TODO complete the code here
  }


}

