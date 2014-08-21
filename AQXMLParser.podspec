Pod::Spec.new do |s|
  s.name         = "AQXMLParser"
  s.version      = "1.0.0"
  s.summary      = "The AQXMLParser extracted from the AQToolkit"
  s.description  = <<-DESC
                      This toolkit is comprised of various bits of utility code I’ve written for odd projects here & there, including iPhone projects such as Outpost. Most of these classes, with the possible exception of those which                       came from iPhone projects, are designed to be usable with both garbage collection and manual memory management.
                   DESC
  s.homepage     = "https://github.com/Golden-Flag/aqtoolkit"
  s.license      = 'MIT License'
  s.author       = { "Jim Dovey" => "jim@dovey.com" }
  s.source       = { :git => "https://github.com/Golden-Flag/aqtoolkit.git", :tag => s.version.to_s }
  s.source_files = 'Classes/StreamingXMLParser/AQXMLParser.{h,m}', 'Classes/iPhoneNonatomic.h', 'Classes/HTTPMessage/*.{h,m}', 'Classes/NSError+CFStreamError.{h,m}'
  s.requires_arc = false

  s.platform     = :ios, "7.0"
  s.ios.deployment_target = '6.0'
  # s.frameworks = 'CFNetwork'
  s.libraries = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  
end
