#ifndef FLUTTER_PLUGIN_VC_TRACKER_PLUGIN_H_
#define FLUTTER_PLUGIN_VC_TRACKER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace vc_tracker {

class VcTrackerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  VcTrackerPlugin();

  virtual ~VcTrackerPlugin();

  // Disallow copy and assign.
  VcTrackerPlugin(const VcTrackerPlugin&) = delete;
  VcTrackerPlugin& operator=(const VcTrackerPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace vc_tracker

#endif  // FLUTTER_PLUGIN_VC_TRACKER_PLUGIN_H_
