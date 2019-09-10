require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'react-native-html-to-pdf'
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = package['license']
  s.homepage         = 'https://github.com/finantechsa/react-native-html-to-pdf'
  s.authors          = 'Horcrux Chen'
  s.source           = { :git => 'https://github.com/finantechsa/react-native-html-to-pdf.git' }
  s.source_files     = 'ios/**/*.{h,m}'
  s.requires_arc     = true
  s.platforms        = { :ios => "8.0", :tvos => "9.2" }
  s.dependency         'React'  
end
