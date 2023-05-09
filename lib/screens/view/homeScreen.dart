import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Train_Provider.dart';

class TrainView extends StatefulWidget {
  const TrainView({Key? key}) : super(key: key);

  @override
  State<TrainView> createState() => _TrainViewState();
}

class _TrainViewState extends State<TrainView> {
  TrainProvider? proTrue;
  TrainProvider? proFalse;

  TextEditingController txtname = TextEditingController();

  String name = "rajdhani";

  @override
  void initState() {
    super.initState();
    Provider.of<TrainProvider>(context, listen: false).apiCalling(name);
  }

  @override
  Widget build(BuildContext context) {
    proFalse = Provider.of<TrainProvider>(context, listen: false);
    proTrue = Provider.of<TrainProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Train Details",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: txtname,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {

              }, child: Text("Save"),),
              Expanded(
                child: Column(
                   children: [
                     Text("${proTrue!.jsonList[0].name}"),
                     Text("${proTrue!.jsonList[0].trainNum}"),
                     Text("${proTrue!.jsonList[0].trainFrom}"),
                     Text("${proTrue!.jsonList[0].trainTo}"),
                     Text("${proTrue!.jsonList[0].data.id}"),


                   ],
                 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
