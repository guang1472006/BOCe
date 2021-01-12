#
# Be sure to run `pod lib lint BOCeNetManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BOCeNetManager'
  s.version          = '0.0.1'
  s.summary          = 'zhangwenxue'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'NetWork for BOCE P2C'

  s.homepage         = 'https://github.com/guang1472006/BOCeNetManager.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '734781246@qq.com' => '734781246@qq.com' }
  s.source           = { :git => 'https://github.com/guang1472006/BOCeNetManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'BOCeNetManager/Classes/BOCENetManager_umbrella.h','BOCeNetManager/Classes/BOCeConst.h'
  
  # s.resource_bundles = {
  #   'BOCeNetManager' => ['BOCeNetManager/Assets/*.png']
  # }
  
  #s.public_header_files = 'BOCeNetManager/Classes/BOCeConst.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'SVProgressHUD','~>2.2.5'
  s.dependency 'YYCategories', '~> 1.0.4'
  
  # Cache
  s.subspec 'BOCeCache' do | cache |
  cache.source_files = 'BOCeNetManager/Classes/Cache/*.{h,m}'
  cache.dependency 'YYCache','~>1.0.4'
  end
  
  # Log
  s.subspec 'BOCeNetLogger' do | log |
  log.source_files = 'BOCeNetManager/Classes/Log/*.{h,m}'
  end
  
  # Model
  s.subspec 'BOCeNetModel' do | model |
  model.source_files = 'BOCeNetManager/Classes/Model/*.{h,m}'
  model.dependency 'YYModel','~>1.0.4'
  end
  
  # Cancle
  s.subspec 'BOCeCancle' do | cancle |
  cancle.source_files = 'BOCeNetManager/Classes/Cancle/*.{h,m}'
  cancle.dependency 'Aspects','~>1.4.1'
  end
  
  # Request
  s.subspec 'BOCeRequest' do | request |
  request.source_files = 'BOCeNetManager/Classes/Request/*.{h,m}'
  end
  
  # Response
  s.subspec 'BOCeResponse' do | response |
  response.source_files = 'BOCeNetManager/Classes/Response/*.{h,m}'
  end
  
  # Manager
  s.subspec 'BOCeManager' do | manager |
  manager.source_files = 'BOCeNetManager/Classes/Manager/*.{h,m}'
  end
  
end
