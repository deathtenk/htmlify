# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'htmlify/version'

Gem::Specification.new do |spec|
  spec.name          = "htmlify"
  spec.version       = Htmlify::VERSION
  spec.authors       = ["Henk Reder"]
  spec.email         = ["hnk.reder@gmail.com"]
  spec.summary       = %q{a gem to generate HTML and CSS templates}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
