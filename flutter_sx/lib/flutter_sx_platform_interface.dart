import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_sx_method_channel.dart';

abstract class FlutterSxPlatform extends PlatformInterface {
  /// Constructs a FlutterSxPlatform.
  FlutterSxPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSxPlatform _instance = MethodChannelFlutterSx();

  /// The default instance of [FlutterSxPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSx].
  static FlutterSxPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSxPlatform] when
  /// they register themselves.
  static set instance(FlutterSxPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
