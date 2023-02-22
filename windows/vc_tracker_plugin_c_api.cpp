#include "include/vc_tracker/vc_tracker_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "vc_tracker_plugin.h"

void VcTrackerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  vc_tracker::VcTrackerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
