require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNColorPanel"
  s.version         = package['version']
  s.homepage        = package['homepage']
  s.summary         = package['description']
  s.license         = "MIT"
  s.author          = { "Wang Atoami" => "atoami@github.com" }
  s.platform        = :ios, "9.0"
  s.source          = { :git => package['homepage'], :tag => "#{s.version}" }
  s.source_files    = 'ios/*.{h,m}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'React'
end