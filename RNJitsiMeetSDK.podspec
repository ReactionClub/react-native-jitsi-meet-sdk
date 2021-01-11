require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNJitsiMeetSDK"
  s.version      = package["version"]
  s.summary      = "RNJitsiMeetSDK"
  s.description  = <<-DESC
                  React Native integration for JitsiMeet
                   DESC
  s.homepage     = "https://github.com/ReactionClub/react-native-jitsi-meet-sdk"
  s.license      = "MIT"
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/ReactionClub/react-native-jitsi-meet-sdk" }
  s.source_files  = "ios/sdk/src/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "react-native-webrtc"
  s.dependency 'Amplitude-iOS', '~> 4.0.4'
  s.dependency 'CocoaLumberjack', '>= 3.5'
  s.dependency 'ObjectiveDropboxOfficial', '~> 3.9.4'

end
