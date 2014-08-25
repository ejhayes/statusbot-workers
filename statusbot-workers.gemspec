# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statusbot/workers/version'

Gem::Specification.new do |spec|
  spec.name          = "statusbot-workers"
  spec.version       = Statusbot::Workers::VERSION
  spec.authors       = ["Eric Hayes"]
  spec.email         = ["eric@deployfx.com"]
  spec.summary       = %q{Workers for statusbot.me}
  spec.description   = %q{Provides the worker processes that statusbot.me needs to operate}
  spec.homepage      = "https://github.com/ejhayes/statusbot-workers"
  spec.license       = "MIT"

  spec.files = Dir["{lib}/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'statusbot-api'
  spec.add_runtime_dependency "trollop"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "debugger"
  spec.add_development_dependency 'simplecov', '~> 0.7.1'
  spec.add_development_dependency 'database_cleaner'
end
