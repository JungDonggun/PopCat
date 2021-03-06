// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'hi',
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: PopCatApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class PopCatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light) // Or Brightness.dark
        );

    return MaterialApp(
      title: 'PopCat',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset('assets/images/popcat_off.jpg'),
        ),
      ),
    );
  }
}
