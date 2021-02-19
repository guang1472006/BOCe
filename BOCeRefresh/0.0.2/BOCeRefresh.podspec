#
# Be sure to run `pod lib lint BOCeRefresh.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BOCeRefresh'
  s.version          = '0.0.2'
  s.summary          = 'zhangwenxue'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'BOCeRefresh'

  s.homepage         = 'https://github.com/guang1472006/BOCeRefresh.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '734781246@qq.com' => '734781246@qq.com' }
  s.source           = { :git => 'https://github.com/guang1472006/BOCeRefresh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BOCeRefresh/Classes/*'
  
  # s.resource_bundles = {
  #   'BOCeRefresh' => ['BOCeRefresh/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  # Header
  s.subspec 'BOCeRefreshHeader' do | header |
  header.source_files = 'BOCeRefresh/Classes/BOCeRefreshHeader/*.{h,m}'
  end
  
  # Footer
  s.subspec 'BOCeRefreshFooter' do | footer |
  footer.source_files = 'BOCeRefresh/Classes/BOCeRefreshFooter/*.{h,m}'
  end
  
  s.dependency 'MJRefresh', '~> 3.5.0'
  
end
