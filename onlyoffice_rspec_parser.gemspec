# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onlyoffice_rspec_parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'onlyoffice_rspec_parser'
  spec.version       = OnlyofficeRspecParser::VERSION
  spec.authors       = ['Pavel Lobashov']
  spec.email         = ['shockwavenn@gmail.com']

  spec.summary       = 'Parse rspec'
  spec.description   = 'Gem for static parsing of _rspec.rb files'
  spec.homepage      = 'https://github.com/onlyoffice-testing-robot/onlyoffice_rspec_parser'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_runtime_dependency('onlyoffice_file_helper', '~> 0.1')
  spec.add_runtime_dependency('onlyoffice_logger_helper', '~> 1')
  spec.add_runtime_dependency('parser', '~> 2')
  spec.license = 'AGPL-3.0'
end
