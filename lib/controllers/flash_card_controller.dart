class FlashcardController extends GetxController {
  var flashcards = <Flashcard>[].obs;

  void addFlashcard(Flashcard card) {
    flashcards.add(card);
  }

// Implement other methods for managing flashcards
}

