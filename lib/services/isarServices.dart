import 'package:app_schedule/models/Note.dart';
import 'package:app_schedule/models/Subject.dart';
import 'package:app_schedule/models/University.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarServices {
  late Future<Isar> db;

  IsarServices() {
    db = openDb();
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([UniversitySchema, SubjectSchema, NoteSchema],
          directory: dir.path, inspector: true);
    }

    return Future.value(Isar.getInstance());
  }
}
