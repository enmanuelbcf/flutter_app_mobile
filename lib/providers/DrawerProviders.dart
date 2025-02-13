import 'package:flutter/material.dart';

class DrawerProvider with ChangeNotifier {

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

get navigatorKey => _navigatorKey;

}
