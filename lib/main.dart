import 'package:flutter/material.dart';
import 'package:kola_wallet_app/screen/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Yeongdo',
      ),
      home: MainScreen(),
    ),
  );
}
