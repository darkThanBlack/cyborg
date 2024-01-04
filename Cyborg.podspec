#
# Be sure to run `pod lib lint Cyborg.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Cyborg'
  s.version          = '0.7.0'
  s.summary          = 'Cyborg PR for to support cocoapods.'

  s.description      = <<-DESC
A personal PR from [Cyborg](https://github.com/uber/cyborg) to support cocoapods.
DESC

  s.homepage         = 'https://github.com/darkThanBlack/cyborg'
  s.license          = { :type => 'Apache License 2.0', :file => 'LICENSE' }
  s.author           = { 'moonShadow' => 'moonshadow_5566@qq.com' }
  s.source           = { :git => 'https://github.com/darkThanBlack/cyborg.git', :tag => s.version.to_s }
  s.social_media_url = 'https://darkthanblack.github.io/'

  s.ios.deployment_target = '11.0'
  s.swift_versions = '4.2'

  s.source_files = 'Cyborg/**/*'
  s.library      = 'xml2'
  s.xcconfig     = {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}

  s.test_spec 'Tests' do |t|
    t.framework = 'XCTest'
    t.requires_app_host = true
    t.source_files = 'CyborgTests/**/*'
  end
end
