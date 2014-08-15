# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'donoji/version'

Gem::Specification.new do |spec|
  spec.name          = "donoji"
  spec.version       = Donoji::VERSION
  spec.authors       = ["Emil Rehnberg"]
  spec.email         = ["emil.rehnberg@gmail.com"]
  spec.summary       = %q{Find common Japanese use for a kanji}
  spec.description   = %q{Given a kanji, this gem aspires to output common uses for it.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~>3.0"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
end
