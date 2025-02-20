Pod::Spec.new do |s|
  s.name             = 'HiResource'
  s.version          = '1.1.1'
  s.summary          = 'Resource module.'
  s.description      = <<-DESC
						Resource module using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiResource'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiResource.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '16.0'
  s.frameworks = 'Foundation', 'UIKit'
  
  s.source_files = 'HiResource/Extension/**/*'
  s.resource_bundles = {'Resources' => ['HiResource/Images.xcassets']}
  s.pod_target_xcconfig = {
  	'EXPANDED_CODE_SIGN_IDENTITY' => '',
  	'CODE_SIGNING_REQUIRED' => 'NO',
  	'CODE_SIGNING_ALLOWED' => 'NO',
  }
  
end
