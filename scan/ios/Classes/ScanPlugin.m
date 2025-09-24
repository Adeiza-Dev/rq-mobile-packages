#import "ScanPlugin.h"
#if __has_include(<scan/scan-Swift.h>)
#import <scan/scan-Swift.h>
#else
#import "scan-Swift.h"
#endif

@implementation ScanPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftScanPlugin registerWithRegistrar:registrar];
}
@end
