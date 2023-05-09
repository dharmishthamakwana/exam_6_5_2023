import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/provider/Train_Provider.dart';
import 'screens/view/homeScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TrainProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => TrainView(),
        },
      ),
    ),
  );
}
