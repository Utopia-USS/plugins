#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'google_sign_in'
  s.version          = '0.0.1'
  s.summary          = 'Google Sign-In plugin for Flutter'
  s.description      = <<-DESC
Enables Google Sign-In in Flutter apps.
                       DESC
  s.homepage         = 'https://github.com/flutter/plugins/tree/main/packages/google_sign_in'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'Flutter Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :http => 'https://github.com/flutter/plugins/tree/master/packages/google_sign_in' }
  s.source_files = 'Classes/**/*.{h,m}'
  s.public_header_files = 'Classes/**/*.h'
  s.module_map = 'Classes/FLTGoogleSignInPlugin.modulemap'
  s.dependency 'Flutter'
  s.dependency 'GoogleSignIn', '~> 5.0'
  s.static_framework = true

  s.platform = :ios, '9.0'

  # GoogleSignIn ~> 5.0 does not support arm64 simulators.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
