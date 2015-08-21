Pod::Spec.new do |s|

  s.name         = "UIKit-TexturePacker"
  s.version      = "1.0.0"
  s.summary      = "Demo project with loader code to display animations and images from a sprite sheet"

  # s.description  = <<-DESC
  #                  A longer description of UIKit-TexturePacker in Markdown format.
  # 
  #                  * Think: Why did you write this? What is the focus? What does it do?
  #                  * CocoaPods will be using this to generate tags, and improve search results.
  #                  * Try to keep it short, snappy and to the point.
  #                  * Finally, don't worry about the indent, CocoaPods strips it!
  #                  DESC

  s.homepage     = "https://github.com/ened/UIKit-TexturePacker"
  # s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"


  s.license      = { type: 'MIT', file: 'LICENSE' }
  # s.license      = { :type => 'MIT', :file => 'FILE_LICENSE' }


  s.author             = { "Andreas Loew" => "support@codeandweb.com" }

  s.platform     = :ios
  s.source       = { :git => "https://github.com/ened/UIKit-TexturePacker.git", :tag => '1.0.0' }

  s.source_files  = 'demo/CAWTexturePackerSprites/' #, 'Classes/**/*.{h,m}'
  s.requires_arc = false
end
