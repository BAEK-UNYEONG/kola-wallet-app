import 'package:flutter/material.dart';
import 'package:kola_wallet_app/const/colors.dart';
import 'package:kola_wallet_app/screen/account/create_account_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: PRIMARY_COLOR,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'KOLA WALLET',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Yeongdo',
                  ),
                ),
                Image.asset(
                  'assets/img/kola.png',
                  width: 320.0,
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => CreateAccountScreen()),
                        );
                      },
                      child: Text('Get Wallet'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(PINK_COLOR),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Import Wallet'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DARK_COLOR),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
