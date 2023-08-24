Pod::Spec.new do |s|
  s.name             = 'ComputableLayout'
  s.version          = '0.4.0'
  s.summary          = 'A config-based layout calculator.'

  s.homepage         = 'https://github.com/dominicstop/ComputableLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Dominic Go' => 'dominic@dominicgo.dev' }
  s.source           = { :git => 'https://github.com/dominicstop/ComputableLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/ComputableLayout/**/*'
end