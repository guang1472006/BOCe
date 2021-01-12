#
# Be sure to run `pod lib lint BOCeUpImageManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BOCeUpImageManager'
  s.version          = '0.0.1'
  s.summary          = 'zhangwenxue'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A image UpLoadManager for BOCE P2C'

  s.homepage         = 'https://github.com/guang1472006/BOCeUpImageManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '734781246@qq.com' => '734781246@qq.com' }
  s.source           = { :git => 'https://github.com/guang1472006/BOCeUpImageManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'BOCeUpImageManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BOCeUpImageManager' => ['BOCeUpImageManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'BOCeNetManager', '~> 0.0.1'
  s.dependency 'AliyunOSSiOS'  , '~> 2.10.8'
  
  # Model
  s.subspec 'BOCeImageModel' do | model |
  model.source_files = 'BOCeUpImageManager/Classes/Model/*.{h,m}'
  model.dependency 'YYModel','~>1.0.4'
  end
  
  # Request
  s.subspec 'BOCeImageRequest' do | request |
  request.source_files = 'BOCeUpImageManager/Classes/Request/*.{h,m}'
  end
  
  # Response
  s.subspec 'BOCeImageResponse' do | response |
  response.source_files = 'BOCeUpImageManager/Classes/Response/*.{h,m}'
  end
  
  # Manager
  s.subspec 'BOCeImageManager' do | manager |
  manager.source_files = 'BOCeUpImageManager/Classes/Manager/*.{h,m}'
  end
  
end
