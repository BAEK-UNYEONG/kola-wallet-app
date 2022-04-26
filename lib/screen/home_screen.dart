import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('안녕하세요'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ...List.generate(
              10,
              (index) => ListTile(
                selected: false,
                title: Text('하이하이'),
                tileColor: Colors.red,
                textColor: Colors.white,
                selectedColor: Colors.blue,
                selectedTileColor: Colors.blueGrey,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text(
                '테스트입니다',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
