#ifndef FLUTTER_PLUGIN_FLUTTER_SX_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_SX_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_sx {

class FlutterSxPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterSxPlugin();

  virtual ~FlutterSxPlugin();

  // Disallow copy and assign.
  FlutterSxPlugin(const FlutterSxPlugin&) = delete;
  FlutterSxPlugin& operator=(const FlutterSxPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_sx

#endif  // FLUTTER_PLUGIN_FLUTTER_SX_PLUGIN_H_
