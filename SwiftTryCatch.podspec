Pod::Spec.new do |s|
  s.name         = 'SwiftTryCatch'
  s.version      = '1.1.0'
  s.summary      = 'Adds try-catch support for Swift'
  s.description  = s.summary + ' via CocoaPods'
  s.homepage     = 'https://github.com/williamFalcon/SwiftTryCatch'
  s.license      = 'MIT'
  s.author       = { 'William Falcon' => 'waf2107@columbia.edu' }
  s.source       = { git: 'https://github.com/williamFalcon/SwiftTryCatch.git', branch: 'master' }
  s.source_files = 'Sources/{include/SwiftTryCatch.h,SwiftTryCatch.m}'
end
