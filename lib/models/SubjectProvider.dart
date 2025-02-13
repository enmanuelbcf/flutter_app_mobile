import 'package:app_schedule/models/Subject.dart';
import 'package:app_schedule/models/University.dart';
import 'package:app_schedule/models/UniversityProvider.dart';
import 'package:app_schedule/services/isarServices.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

class Subjectprovider extends ChangeNotifier {
  List<Subject> _subjects = [];

  get subjects => _subjects;
  get ordenar => _ordernar;
  bool _ordernar = false;
  //C R E A T E -
  Future<void> addSucject({
    required String name,
    required String day,
    required String he,
    required String hs,
    required String modalidad,
    String? aula,
    required int id,
  }) async {
    final isar = await IsarServices().db;
    final unversity = UniversityProvider();
    final value = await unversity.getId(id: id);

    final newSubject = Subject();
    newSubject.subjectName = name;
    newSubject.day = day;
    newSubject.horaEntrada = he;
    newSubject.horaSalida = hs;
    newSubject.modalidad = modalidad;
    newSubject.aula = aula;
    newSubject.univesity.value = value;
    try {
      await isar.writeTxn(() async {
        await isar.subjects.put(newSubject);
        await newSubject.univesity.save();
      });
    } on IsarError catch (e) {
      print(e);
    }
  }

  Future<void> getSubjectForUnivertisy({required int id}) async {
    final isar = await IsarServices().db;
    List<Subject> fetchSubjects = await isar.subjects
        .filter()
        .univesity((university) => university.idEqualTo(id))
        .sortByDay()
        .findAll();
    _subjects.clear();
    _subjects.addAll(fetchSubjects);
    notifyListeners();
  }

  Future<void> getAllSubject() async {
    final isar = await IsarServices().db;
    List<Subject> fetchSubjects =
        await isar.subjects.where().sortByDay().thenByHoraEntrada().findAll();
    _subjects.clear();
    _subjects.addAll(fetchSubjects);
    notifyListeners();
    print(_subjects);
  }

  Future<void> deleteSubject({required int id}) async {
    final isar = await IsarServices().db;
    await isar
        .writeTxn(() => isar.subjects.filter().idEqualTo(id).deleteFirst());
    notifyListeners();
  }

  Future<void> deleteAll() async {
    final isar = await IsarServices().db;
    await isar
        .writeTxn(() => isar.subjects.filter().univesityIsNull().deleteAll());
    notifyListeners();
  }

  Future<void> editSubject(
      {required int id, String? name, String? aula}) async {
    final isar = await IsarServices().db;
    final sub = await isar.subjects.get(id);
    sub!.subjectName = name;
    sub.aula = aula;
    await isar.writeTxn(() => isar.subjects.put(sub));

    notifyListeners();
  }

  Future<void> setOrnedar() async {
    if (_ordernar) {
      _ordernar = false;
      notifyListeners();
    } else {
      _ordernar = true;
      notifyListeners();
    }
  }
}
