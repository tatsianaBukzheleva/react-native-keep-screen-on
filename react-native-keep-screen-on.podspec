require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-keep-screen-on"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = package["author"]["name"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/tatsianaBukzheleva/react-native-keep-screen-on", :branch => "master" }
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency "React"
end
