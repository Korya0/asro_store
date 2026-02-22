import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvType { dev, prod }

class EnvVariable {
  EnvVariable._();
  static final EnvVariable instance = EnvVariable._();

  String _envType = '';

  Future<void> init({required EnvType envType}) async {
    if (envType == EnvType.dev) {
      await dotenv.load(fileName: 'assets/env-dev');
    } else {
      await dotenv.load(fileName: 'assets/env-prod');
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  bool get debugMode => _envType == 'dev';
}
