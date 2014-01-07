# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sensu-plugin-spec/version"

Gem::Specification.new do |spec|
  spec.name          = "sensu-plugin-spec"
  spec.version       = SensuPluginSpec::VERSION
  spec.authors       = ["Sean Porter"]
  spec.email         = ["portertech@gmail.com"]
  spec.summary       = "The sensu-plugin test suite, for testing various implementations in different languages."
  spec.description   = "The sensu-plugin test suite, for testing various implementations in different languages."
  spec.homepage      = "https://github.com/sensu/sensu-plugin-spec"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sensu-plugin"
end
