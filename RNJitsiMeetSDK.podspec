require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNJitsiMeetSDK"
  s.version      = package["version"]
  s.summary      = "RNJitsiMeetSDK"
  s.description  = <<-DESC
                  React Native integration for JitsiMeet
                   DESC
#   s.homepage     = "https://github.com/mieszko4/react-native-zoom-us"
  s.license      = "MIT"
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "11.0"

#   s.source       = { :git => "https://github.com/mieszko4/react-native-zoom-us" }
  s.source_files  = "ios/sdk/src/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
