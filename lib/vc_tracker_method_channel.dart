import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vc_tracker_platform_interface.dart';

/// An implementation of [VcTrackerPlatform] that uses method channels.
class MethodChannelVcTracker extends VcTrackerPlatform {
  /// The method channel used to interact with the native platform.
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('win_tracker');
  @override
  Future<dynamic> getOpenWindowTitle() async{
    return await methodChannel.invokeMethod('getOpenWindowTitle');
  }
}
