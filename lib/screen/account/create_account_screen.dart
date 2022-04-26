import 'package:flutter/material.dart';
import 'package:kola_wallet_app/component/text_input.dart';
import 'package:kola_wallet_app/const/colors.dart';
import 'package:kola_wallet_app/utils/wallet.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: TextInput(
                    label: 'PASSWORD',
                    initialValue: '',
                    textInputType: TextInputType.visiblePassword,
                    autofocus: true,
                  ),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: TextInput(
                    label: 'PASSWORD CONFIRM',
                    initialValue: '',
                    textInputType: TextInputType.visiblePassword,
                    autofocus: false,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Icon(
                              Icons.arrow_back,
                            ),
                          ),
                          Text('Go Back'),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(DARK_COLOR),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    ElevatedButton(
                      onPressed: () async {

                        final Wallet wallet = Wallet();
                        String mnemonic = 'net action fiction accident kid plastic zebra run coffee resemble step divert';//wallet.generateMnemonic();

                        print(mnemonic);

                        String privateKey = await wallet.getPrivateKey(mnemonic);

                        print(privateKey);

                        print(await wallet.getPublicAddress(privateKey).toString());


                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Icon(
                              Icons.account_balance_wallet,
                              color: DARK_COLOR,
                            ),
                          ),
                          Text('Create Wallet'),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(YELLOW_COLOR),
                        foregroundColor:
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
