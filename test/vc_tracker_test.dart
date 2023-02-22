import 'package:flutter_test/flutter_test.dart';
import 'package:vc_tracker/vc_tracker.dart';
import 'package:vc_tracker/vc_tracker_platform_interface.dart';
import 'package:vc_tracker/vc_tracker_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVcTrackerPlatform
    with MockPlatformInterfaceMixin
    implements VcTrackerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VcTrackerPlatform initialPlatform = VcTrackerPlatform.instance;

  test('$MethodChannelVcTracker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVcTracker>());
  });

  test('getPlatformVersion', () async {
    VcTracker vcTrackerPlugin = VcTracker();
    MockVcTrackerPlatform fakePlatform = MockVcTrackerPlatform();
    VcTrackerPlatform.instance = fakePlatform;

    expect(await vcTrackerPlugin.getPlatformVersion(), '42');
  });
}
