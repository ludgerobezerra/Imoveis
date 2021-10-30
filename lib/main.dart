import 'package:flutter/material.dart';
import 'package:imoveis/Pages/login.dart';

import 'Pages/home.dart';

void main() {
  runApp(
    const MaterialApp(

      home: Login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
