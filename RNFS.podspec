require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNFS"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/eldh/react-native-fs"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Andreas Eldh" => "andreas.eldh@gmail.com" }
  
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'
  s.macos.deployment_target = '10.13'

  s.source          = { :git => "https://github.com/eldh/react-native-fs", :tag => "v#{s.version}" }
  s.source_files    = '*.{h,m}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'React'
end
