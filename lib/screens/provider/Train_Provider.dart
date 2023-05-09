import 'package:flutter/cupertino.dart';

import '../../utiles/api_helper.dart';

class TrainProvider extends ChangeNotifier {
  Apihelper? apiHelper;

  List<dynamic> jsonList = [];

  void apiCalling(String name) async {
    apiHelper = Apihelper();
    List<dynamic> list = await apiHelper!.apiCaller(name);
    jsonList = list;
    // notifyListeners();
  }
}
