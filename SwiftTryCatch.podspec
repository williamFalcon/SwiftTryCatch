Pod::Spec.new do |s|
  s.name             = "SwiftTryCatch"
  s.version          = "0.0.1"
  s.summary          = "Adds try/catch support for Swift."
  s.homepage         = "https://github.com/williamFalcon/SwiftTryCatch"
  s.license          = 'MIT'
  s.author           = { "William Falcon" => "waf2107@columbia.edu" }
  s.source           = { :git => "https://github.com/cfr/SwiftTryCatch.git",
                         :tag => '0.0.1' }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.source_files     = 'SwiftTryCatch.{h,m}'
end

