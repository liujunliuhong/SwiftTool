
Pod::Spec.new do |s|
  s.name                       = 'Galaxy'
  s.homepage                   = 'https://github.com/liujunliuhong/Galaxy'
  s.summary                    = 'Some useful tools'
  s.description                = 'Some useful tools, contains UIKit and Foundation'
  s.author                     = { 'liujunliuhong' => '1035841713@qq.com' }
  s.version                    = '2.0.2'
  s.source                     = { :git => 'https://github.com/liujunliuhong/Galaxy.git', :tag => s.version.to_s }
  s.platform                   = :ios, '10.0'
  s.license                    = { :type => 'MIT', :file => 'LICENSE' }
  s.module_name                = 'Galaxy'
  s.swift_version              = '5.0'
  s.ios.deployment_target      = '10.0'
  s.requires_arc               = true
  s.static_framework           = true
  s.source_files               = 'Sources/*/*.swift','Sources/*/*.{h,m}'
  #s.exclude_files              = 'Sources/Crypto/SECP256K1.swift'
  s.dependency 'CocoaLumberjack/Swift'
  s.dependency 'SnapKit'
  s.dependency 'Alamofire'
  s.dependency 'BigInt'
  s.dependency 'CryptoSwift'
  s.dependency 'secp256k1.c'
end