import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vc_tracker_method_channel.dart';

abstract class VcTrackerPlatform extends PlatformInterface {
  /// Constructs a VcTrackerPlatform.
  VcTrackerPlatform() : super(token: _token);

  static final Object _token = Object();

  static VcTrackerPlatform _instance = MethodChannelVcTracker();

  /// The default instance of [WinTrackerPlatform] to use.
  ///
  /// Defaults to [MethodChannelWinTracker].
  static VcTrackerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WinTrackerPlatform] when
  /// they register themselves.
  static set instance(VcTrackerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<dynamic> getOpenWindowTitle(){
    throw UnimplementedError('getOpenWindowTitle() has not been implemented.');
  }
  Future<void> requestPermission({required bool onlyOpenPrefPane}) {
    throw UnimplementedError('requestPermission() has not been implemented.');
  }

  Future<bool?> isAccessAllowed() {
    throw UnimplementedError('isAccessAllowed() has not been implemented.');
  }
}
