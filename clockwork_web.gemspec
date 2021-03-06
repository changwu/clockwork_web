# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clockwork_web/version'

Gem::Specification.new do |spec|
  spec.name          = "clockwork_web"
  spec.version       = ClockworkWeb::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]
  spec.summary       = %q{A web interface for Clockwork}
  spec.description   = %q{A web interface for Clockwork}
  spec.homepage      = "https://github.com/ankane/clockwork_web"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "clockwork"
  spec.add_dependency "safely_block"
  spec.add_dependency "railties"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
