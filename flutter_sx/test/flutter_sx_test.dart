import 'package:flutter_sx/flutter_sx.dart';
import 'package:flutter_sx/flutter_sx_method_channel.dart';
import 'package:flutter_sx/flutter_sx_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSxPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSxPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSxPlatform initialPlatform = FlutterSxPlatform.instance;

  test('$MethodChannelFlutterSx is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSx>());
  });

  test('getPlatformVersion', () async {
    SX flutterSxPlugin = SX();
    MockFlutterSxPlatform fakePlatform = MockFlutterSxPlatform();
    FlutterSxPlatform.instance = fakePlatform;

    expect(await flutterSxPlugin.getPlatformVersion(), '42');
  });
}
