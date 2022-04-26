import "package:hex/hex.dart";
import 'package:bip39/bip39.dart' as bip39;
import "package:ed25519_hd_key/ed25519_hd_key.dart";
import 'package:web3dart/credentials.dart';

abstract class WalletCore {
  String generateMnemonic();

  Future<String> getPrivateKey(String mnemonic);

  Future<EthereumAddress> getPublicAddress(String privateKey);
}

class Wallet implements WalletCore {
  @override
  String generateMnemonic() {
    return bip39.generateMnemonic();
  }

  @override
  Future<String> getPrivateKey(String mnemonic) async {
    final seed = bip39.mnemonicToSeedHex(mnemonic);
    final master = await ED25519_HD_KEY.getMasterKeyFromSeed(
      HEX.decode(seed),
      masterSecret: '',
    );
    final privateKey = HEX.encode(master.key);
    return privateKey;
  }

  @override
  Future<EthereumAddress> getPublicAddress(String privateKey) async {
    final private = EthPrivateKey.fromHex(privateKey);
    final address = await private.extractAddress();
    print("private.address : " + address.toString());
    return address;
  }
}
