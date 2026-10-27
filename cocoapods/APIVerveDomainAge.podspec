Pod::Spec.new do |s|
  s.name             = 'APIVerveDomainAge'
  s.version          = '1.2.3'
  s.summary          = 'Domain Age returns when a domain was first registered and how old it is in days, months and years, with a readable age, an age bracket...'
  s.description      = <<-'DESC'
Domain Age returns when a domain was first registered and how old it is in days, months and years, with a readable age, an age bracket and a newly-registered flag. Paid plans add the expiration date and the last registry update.

This iOS/macOS SDK provides a convenient way to access the Domain Age from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/domainage?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/domainage-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDomainAge/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
