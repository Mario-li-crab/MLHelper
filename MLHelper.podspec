#
# Be sure to run `pod lib lint MLHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MLHelper'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MLHelper.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Mario-li-crab/MLHelper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mario-Li' => 'li062212106@126.com' }
  s.source           = { :git => 'https://github.com/Mario-li-crab/MLHelper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.default_subspec = "Core"
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.4.0'
  
  # Platform
  s.platform              = :ios
  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/Classes/**/*', 'Sources/Foundation+Ex/**/*'
  
  # Subspec
  s.subspec "Core" do |ss|
    ss.source_files = "Sources/Classes/"
    ss.framework  = "Foundation"
  end
end
