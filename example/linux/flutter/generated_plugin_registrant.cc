//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <vc_tracker/vc_tracker_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) vc_tracker_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "VcTrackerPlugin");
  vc_tracker_plugin_register_with_registrar(vc_tracker_registrar);
}
