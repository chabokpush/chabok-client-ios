<p align="center"> 
  <img src="https://github.com/chabokpush/chabok-assets/blob/master/sdk-logo/iOS.svg">
</p>

# Chabok Push for iOS
[![Cocoa-pods](https://img.shields.io/cocoapods/v/ChabokPush.svg)](https://cocoapods.org/pods/ChabokPush) [![Cocoa-pods](https://img.shields.io/cocoapods/p/ChabokPush.svg)](https://cocoapods.org/pods/ChabokPush)

Blow some breath into your app with Chabok realtime messaging and receive push notifications across all platforms with zero code. Know your users better, push them the content based on their location or track their presence/location without headache.

## Getting started guide for iOS

1. The native iOS SDKs need to be setup using Cocoapods. In your project's `ios` directory, create a Podfile.
```bash
$ cd ios
$ pod init
```
2. Edit the Podfile to include `ChabokPush` as a dependency for your project, and then install the pod with `pod instal`.
```bash
use_frameworks!
platform :ios, '9.0'

target 'YOUR_TARGET_NAME' do

  # Pods for AwesomeProject
  pod 'ChabokPush'

end
```

3. Open the iOS project with .xcworkspace file in Xcode and also, open the `node_modules/react-native-chabok/` directory. Move the `ios/AdpPushClient.h` and `ios/AdpPushClient.m` files to your project.

4. Import inside `AppDelegate`:
```objectivec
#import <AdpPushClient/AdpPushClient.h>

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if ([PushClientManager.defaultManager application:application didFinishLaunchingWithOptions:launchOptions]) {
        NSLog(@"Application was launch by clicking on Notification...");
    }
    
    ...
   }

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error{
  // Hook and handle failure of get Device token from Apple APNS Server
  [PushClientManager.defaultManager application:application
didFailToRegisterForRemoteNotificationsWithError:error];
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
  // Manager hook and handle receive Device Token From APNS Server
  [PushClientManager.defaultManager application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void)application:(UIApplication *)application didRegisterUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings{
  // Manager hook and Handle iOS 8 remote Notificaiton Settings
  [PushClientManager.defaultManager application:application didRegisterUserNotificationSettings:notificationSettings];
}

```

### Installation
See ChabokPush [iOS Framework](https://doc.chabokpush.com/ios/sdk-setup.html#%DB%B1--%D9%86%D8%B5%D8%A8-%DA%A9%D8%AA%D8%A7%D8%A8%D8%AE%D8%A7%D9%86%D9%87) installation document.

### API
See ChabokPush [Usage](https://doc.chabokpush.com/ios/sdk-setup.html#%DB%B2--%D9%85%D9%82%D8%AF%D8%A7%D8%B1%D8%AF%D9%87%DB%8C-%D8%A7%D9%88%D9%84%DB%8C%D9%87-initialize) page for a list of all available methods.

### Release Note
You can find release note [here](https://doc.chabokpush.com/ios/release-note.html).

### Support
Please visit [Issues](https://github.com/chabokpush/chabok-client-ios/issues).
