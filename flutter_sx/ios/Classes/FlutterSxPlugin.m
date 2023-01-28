#import "FlutterSxPlugin.h"
#if __has_include(<flutter_sx/flutter_sx-Swift.h>)
#import <flutter_sx/flutter_sx-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_sx-Swift.h"
#endif

@implementation FlutterSxPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSxPlugin registerWithRegistrar:registrar];
}
@end
