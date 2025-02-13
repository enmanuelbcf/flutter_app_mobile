import 'package:flutter/material.dart';

class Universityvalidation with ChangeNotifier {
  String _universityName = '';
  String _acronys = '';

  get universityName => _universityName;
  get acronys => _acronys;


  void setUniversityName(String name) {
    _universityName = name;
    notifyListeners();
  }

  void setAcronys(String acronys) {
    _acronys = acronys;
    notifyListeners();
  }

  bool isValid() {
    if (_universityName.isEmpty &&
        _universityName.trim().isEmpty &&
        _acronys.isEmpty &&
        _acronys.trim().isEmpty) {
        return false;
    }
    return true;
  }
}
