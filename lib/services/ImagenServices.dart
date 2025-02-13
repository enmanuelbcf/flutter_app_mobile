import 'dart:io';


import 'package:path_provider/path_provider.dart';

class ImagenServices{
   
  File file;


  ImagenServices({required this.file});
 
  Future<String> saveImage({required String name}) async {
    final dir = await getApplicationDocumentsDirectory();
    final localImage = await file.copy('${dir.path}/$name');
    print('===FILE NAME===');
    print(localImage.path);
    return localImage.path;
  
   
  }
}
