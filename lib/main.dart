import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/provider/Train_Provider.dart';
import 'screens/view/TrainViewscreen.dart';

void main() {
  runApp(
    DevicePreview(
       enabled:!kReleaseMode ,
      builder: (context) => MultiProvider(
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
    ),
  );
}
