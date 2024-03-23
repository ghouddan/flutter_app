import 'package:flutter/material.dart';

class PresenceState extends ChangeNotifier {
  Map<String, bool> presenceMap = {};

  void updatePresence(String startTime, bool presence) {
    presenceMap[startTime] = presence;
    notifyListeners();
  }

  
}
