#include "include/flutter_sx/flutter_sx_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_sx_plugin.h"

void FlutterSxPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_sx::FlutterSxPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
