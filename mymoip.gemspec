# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mymoip/version'

RUBY_VERSION_SPLIT = RUBY_VERSION.split('.')

Gem::Specification.new do |spec|
  spec.name          = 'mymoip'
  spec.version       = MyMoip::VERSION
  spec.authors       = ['Irio Irineu Musskopf Junior']
  spec.email         = ['iirineu@gmail.com']
  spec.description   = "The easier way to use Moip's transparent checkout."
  spec.summary       = 'MoIP transactions in a gem to call your own.'
  spec.homepage      = 'https://github.com/Irio/mymoip'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel'
  spec.add_dependency 'builder'
  spec.add_dependency 'httparty'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'mocha', '~> 0.14.0'
  spec.add_development_dependency 'rake', '~> 10.1.1'
  spec.add_development_dependency 'rdoc', '~> 4.1.0'
  spec.add_development_dependency 'vcr', '~> 2.8.0'
  spec.add_development_dependency 'webmock', '~> 1.15.2'

  if RUBY_VERSION_SPLIT[0] == '2' && RUBY_VERSION_SPLIT[1] == '2'
    spec.add_development_dependency 'minitest', '~> 4.0'
    spec.add_development_dependency 'test-unit', '~> 2.5.5'
  end
end
