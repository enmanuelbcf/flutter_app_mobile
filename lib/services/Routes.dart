import 'package:app_schedule/main.dart';
import 'package:app_schedule/screen/AddUniversities.dart';
import 'package:app_schedule/screen/SubjectPage.dart';
import 'package:app_schedule/screen/pageAddSubject.dart';
import 'package:app_schedule/screen/pageNotes.dart';

class Routes {
  static String pageAddUniversity = '/Adduniversities';
  static String pageHome = '/Home';
  static String pageSubject = '/subject';
  static String pageAddSubject = '/PageAddSubject';
  static String pageNote = '/PageNotes';
}

final routes = {
  '/Adduniversities': (context) => const PageUniversities(),
  '/Home': (context) => const MyApp(),
  '/subject': (context) => const Subjectpage(),
  '/PageAddSubject': (context) => AsignaturaForm(),
  '/PageNotes': (context) => const pageNotes()
};
