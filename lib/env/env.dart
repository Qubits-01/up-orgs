import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'lib/env/.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'TIMEZONEDB_API_KEY')
  static final timeZoneDbApiKey = _Env.timeZoneDbApiKey;
}
