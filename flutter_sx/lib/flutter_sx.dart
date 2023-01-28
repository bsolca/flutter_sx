
import 'flutter_sx_platform_interface.dart';

class FlutterSx {
  Future<String?> getPlatformVersion() {
    return FlutterSxPlatform.instance.getPlatformVersion();
  }
}
