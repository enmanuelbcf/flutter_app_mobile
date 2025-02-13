import 'package:app_schedule/models/Subject.dart';
import 'package:app_schedule/models/University.dart';
import 'package:app_schedule/services/isarServices.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class UniversityProvider extends ChangeNotifier {
  Map<String, dynamic> dataResponse = {};

  final isarServices = IsarServices();

// I N I T I A L I Z E -- D A T A B A S E

  //VARIABLE STATE
  final List<University> universities = [];

  //READ

  Future getId({required int id}) async {
    final isar = await IsarServices().db;
    final valor = await isar.universitys.filter().idEqualTo(id).findFirst();
    return valor;
  }

  Future<void> fecthUniversities() async {
    final isar = await IsarServices().db;
    List<University> fecthUniversites =
        await isar.universitys.where().findAll();
    universities.clear();
    universities.addAll(fecthUniversites);
    notifyListeners();
  }

  //C R E A T E -
  Future<dynamic> addUniversity(
      {required String name,
      required String logo,
      required String acrony}) async {
    final newUniversity = University();
    newUniversity.universityName = name;
    newUniversity.logotype = logo;
    newUniversity.acronyms = acrony;

    try {
      final isar = await IsarServices().db;
      await isar.writeTxn(() => isar.universitys.put(newUniversity));
      fecthUniversities();
      dataResponse = {'Codigo': '200', 'Message': 'Suscces'};
      return dataResponse;
    } catch (e) {
      if (e is IsarError) {
        print('Error Isar -> $e');
        dataResponse = {'Codigo': '101', 'Message': 'Universidad ya Existe'};
        return dataResponse;
      }
      dataResponse = {'Codigo': '500', 'Message': 'Error Interno'};
      return dataResponse;
    }
    //insert data

    // refrest data
  }

  Future<void> delete({required int id}) async {
    final isar = await IsarServices().db;
    await isar
        .writeTxn(() => isar.universitys.filter().idEqualTo(id).deleteFirst());
    fecthUniversities();
    notifyListeners();
  }

 
}
