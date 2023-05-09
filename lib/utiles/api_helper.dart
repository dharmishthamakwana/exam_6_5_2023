import 'dart:convert';

import 'package:exam_6_5_2023/screens/modal/Trainmodel.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  Future<List> apiCaller(String name) async {
    var train = jsonEncode({"search": name});

    Uri uri = Uri.parse("https://trains.p.rapidapi.com/");
    var response = await http.post(uri,
        headers: {
          "X-RapidAPI-Key":
              "8fc7258c1emshaacb44946e94e6bp17dab4jsn6e16a2fa46dd",
          "content-type": "application/json",
          "X-RapidAPI-Host": "trains.p.rapidapi.com"
        },
        body: train);
    var json = jsonDecode(response.body);
    print(response.body);
    List<dynamic> jsonList = json.map((e) => TrainModel.fromJson(e)).toList();
    return jsonList;
  }
}
