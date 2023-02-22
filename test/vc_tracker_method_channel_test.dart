import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vc_tracker/vc_tracker_method_channel.dart';

void main() {
  MethodChannelVcTracker platform = MethodChannelVcTracker();
  const MethodChannel channel = MethodChannel('vc_tracker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
