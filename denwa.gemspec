# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'denwa/version'

Gem::Specification.new do |spec|
  spec.name          = 'denwa'
  spec.version       = Denwa::VERSION
  spec.authors       = ['Shouichi Kamiya']
  spec.email         = ['shouichi.kamiya@gmail.com']
  spec.description   = %q{Formats Japanese phone numbers.}
  spec.summary       = %q{Formats Japanese phone numbers.}
  spec.homepage      = 'https://shouichi.github.com/denwa/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
