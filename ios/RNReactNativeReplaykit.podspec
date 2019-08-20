
require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name         = "RNReactNativeReplaykit"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNReactNativeReplaykit
                   DESC
  s.homepage     = "https://github.com/code-matt/react-native-replaykit"
  s.license      = package['license']
  s.authors       = { "Matthew Thompson" => "code.matthew.thompson@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/code-matt/react-native-replaykit.git", :tag => "master" }
  s.source_files = "**/*.{h,m,swift}"
  s.swift_version = '4.2'

  s.frameworks = 'Foundation', 'AVKit', 'ReplayKit', 'UIKit'

  s.dependency "React"

end

  