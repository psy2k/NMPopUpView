#
# Be sure to run `pod lib lint NMPopUpViewSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NMPopUpViewSwift"
  s.version          = "4.0.1"
  s.summary          = "NMPopUpViewSwift is a simple class for iOS that shows nice popup windows"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Simple class for iOS that shows nice popup windows with a subtle animation. Support images and custom messages.
                       DESC

  s.homepage         = "https://github.com/psy2k/NMPopUpView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Nikos Maounis" => "nikospsy2k@gmail.com" }
  s.source           = { :git => "https://github.com/psy2k/NMPopUpView.git", :tag => 'v4.0.1' }
  s.social_media_url = 'https://twitter.com/Psy2k'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'NMPopUpView/Pod/Classes/**/*'
  s.resource_bundles = {
    'NMPopUpViewSwift' => ['NMPopUpView/Pod/Assets/*.png', 'NMPopUpView/Pod/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
