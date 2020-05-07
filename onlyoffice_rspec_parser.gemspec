# frozen_string_literal: true

require_relative 'lib/onlyoffice_rspec_parser/name'
require_relative 'lib/onlyoffice_rspec_parser/version'

Gem::Specification.new do |s|
  s.name = OnlyofficeRspecParser::NAME
  s.version = OnlyofficeRspecParser::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov']
  s.summary = 'Parse rspec'
  s.description = 'Gem for static parsing of _rspec.rb files'
  s.homepage = "https://github.com/onlyoffice-testing-robot/#{s.name}"
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'changelog_uri' => "#{s.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/#{s.name}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage
  }
  s.email = ['shockwavenn@gmail.com']
  s.files = Dir['lib/**/*']
  s.add_runtime_dependency('onlyoffice_file_helper', '~> 0.1')
  s.add_runtime_dependency('onlyoffice_logger_helper', '~> 1')
  s.add_runtime_dependency('parser', '~> 2')
  s.add_development_dependency('rake', '~> 13.0')
  s.required_ruby_version = '>= 2.4'
  s.license = 'AGPL-3.0'
end
