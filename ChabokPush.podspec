Pod::Spec.new do |s|
s.name         = 'ChabokPush'
s.module_name  = 'AdpPushClient'
s.version='1.20.2'
s.summary      = 'Connect your users with Chabok realtime messaging or send push notifications to them.'
s.description  = <<-DESC
Chabok Push provides your app with in-app messaging and easy geo-location features.

AdpDigital co
DESC

s.requires_arc = true

s.homepage     = 'https://github.com/chabokpush/chabok-client-ios'
s.license =    { :type => 'proprietary', :text => <<-LICENSE
Copyright 2015 - present AdpDigital. All rights reserved.
LICENSE
}
s.author       = { 'AdpDigital' => 'chabok@adpdigital.com' }
s.source = { :http => 'https://github.com/chabokpush/chabok-client-ios/raw/master/ChabokFramework.zip' }

s.platform = :ios
s.ios.deployment_target = '7.0'

s.frameworks = 'MobileCoreServices', 'CoreLocation', 'SystemConfiguration', 'CoreData'
s.weak_framework = 'UserNotifications'
s.vendored_frameworks  = 'AdpPushClient.framework'
end
