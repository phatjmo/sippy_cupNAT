# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fakefs/version'

Gem::Specification.new do |spec|
  spec.name          = "fakefs"
  spec.version       = FakeFS::Version.to_s
  spec.authors       = ["Chris Wanstrath", "Scott Taylor", "Jeff Hodges", "Pat Nakajima", "Brian Donovan"]
  spec.email         = ["chris@ozmm.org"]
  spec.description   = %q{A fake filesystem. Use it in your tests.}
  spec.summary       = %q{A fake filesystem. Use it in your tests.}
  spec.homepage      = "http://github.com/defunkt/fakefs"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency 'rubocop', '~>0.25'
end
