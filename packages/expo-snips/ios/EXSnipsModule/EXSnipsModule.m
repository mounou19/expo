// Copyright 2018-present 650 Industries. All rights reserved.

#import <EXSnipsModule/EXSnipsModule.h>

#import <EXCore/EXUtilities.h>
#import <EXPermissionsInterface/EXPermissionsInterface.h>


@interface EXSnipsModule ()

@property (nonatomic, weak) EXModuleRegistry *moduleRegistry;
@property (nonatomic, weak) id<EXPermissionsInterface> permissionsManager;
@property (nonatomic, weak) id<EXUtilitiesInterface> utilities;
@property (nonatomic, strong) EXPromiseResolveBlock resolve;
@property (nonatomic, strong) EXPromiseRejectBlock reject;

@end

@implementation EXSnipsModule

EX_EXPORT_MODULE(ExpoSnips);

- (void)setModuleRegistry:(EXModuleRegistry *)moduleRegistry
{
  _moduleRegistry = moduleRegistry;
  
  if (_moduleRegistry != nil) {
    _permissionsManager = [_moduleRegistry getModuleImplementingProtocol:@protocol(EXPermissionsInterface)];
    _utilities = [_moduleRegistry getModuleImplementingProtocol:@protocol(EXUtilitiesInterface)];
  }

  
}

EX_EXPORT_METHOD_AS(testAsync, options:(NSDictionary *)options resolver:(EXPromiseResolveBlock)resolve rejecter:(EXPromiseRejectBlock)reject))
{

  _resolve(@{@"type": @"cancel", @"text": @"IT WORKS"});  

  if (_resolve != nil || _reject != nil) {
    reject(@"E_DOCUMENT_PICKER", @"Different document picking in progress. Await other document picking first.", nil);

    return;
  }

  _resolve = resolve;
  _reject = reject;

  NSString *text = options[@"text"];

  /*ViewController *mainVC ;

  @try {
    mainVC = [[ViewController alloc] init];
  }
  @catch (NSException *exception) {
    reject(@"E_PICKER_ICLOUD", @"DocumentPicker requires the iCloud entitlement. If you are using ExpoKit, you need to add this capability to your App Id. See `https://docs.expo.io/versions/latest/expokit/advanced-expokit-topics#using-documentpicker` for more info.", nil);
    _resolve = nil;
    _reject = nil;
    return;
  }

  [_utilities.currentViewController presentViewController:mainVC animated:YES completion:nil];*/
  NSLog(@"test interface opened : %@", text);

  _resolve(@{@"type": @"cancel", @"text": @"IT WORKS"});
  _resolve = nil;
  _reject = nil;
}

@end