Pod::Spec.new do |s|
  s.name             = 'AZAPicker'
  s.version          = '1.0.3'
  s.summary          = 'A configurable picker for iOS apps written in Swift'

  s.description      = <<-DESC
AZAPicker is a configurable and simple horizontal picker for iOS apps written entirely in Swift.
                       DESC

  s.homepage         = 'https://github.com/avanzabank/AZAPicker'
  s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author           = { 'Viktor Rutberg' => 'viktor.rutberg@avanza.se', 'Tommy Malmström' => 'tommy.malmstrom@avanza.se', 'Askia Linder' => 'askia.linder@avanza.se' }
  s.source           = { :git => 'https://github.com/avanzabank/AZAPicker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'AZAPicker/Classes/**/*'
  s.frameworks = 'UIKit'
end
