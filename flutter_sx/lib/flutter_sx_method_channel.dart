import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_sx_platform_interface.dart';

/// An implementation of [FlutterSxPlatform] that uses method channels.
class MethodChannelFlutterSx extends FlutterSxPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_sx');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
