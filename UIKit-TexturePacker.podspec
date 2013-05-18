Pod::Spec.new do |s|
  s.name     = 'UIKit-TexturePacker'
  s.version  = '1.0'
  s.license  = 'MIT'
  s.summary  = 'UIKit-TexturePacker'
  s.homepage = 'https://github.com/AndreasLoew/UIKit-TexturePacker'
  s.author   = { 'Andreas Loew' => 'support@codeandweb.com' }
  s.source   = { :git => 'https://github.com/AndreasLoew/UIKit-TexturePacker', :tag => '1.0' }
  s.platform = :ios
  s.source_files = 'demo/CAWTexturePackerSprites'
  s.resources = ""
  s.requires_arc = true
  s.framework = 'QuartzCore'
end
