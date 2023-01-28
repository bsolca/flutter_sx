import 'flutter_sx_platform_interface.dart';

class SX {
  Future<String?> getPlatformVersion() {
    return FlutterSxPlatform.instance.getPlatformVersion();
  }
}
