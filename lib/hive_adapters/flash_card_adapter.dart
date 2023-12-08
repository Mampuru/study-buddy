import 'package:hive/hive.dart';
import 'package:study_buddy/models/flashcard.dart';

class FlashcardAdapter extends TypeAdapter<Flashcard> {
  @override
  final int typeId = 0; // Assign a unique ID

  @override
  Flashcard read(BinaryReader reader) {
    // Implement how to read data from Hive
    return Flashcard(
      question: reader.readString(),
      answer: reader.readString(),
      category: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Flashcard obj) {
    // Implement how to write data to Hive
    writer.writeString(obj.question);
    writer.writeString(obj.answer);
    writer.writeString(obj.category);
  }
}

