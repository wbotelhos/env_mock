# frozen_string_literal: true

require_relative 'lib/env_mock/version'

Gem::Specification.new do |spec|
  spec.author           = 'Washington Botelho'
  spec.description      = 'Mock your ENVs.'
  spec.email            = 'wbotelhos@gmail.com'
  spec.extra_rdoc_files = Dir['CHANGELOG.md', 'LICENSE', 'README.md']
  spec.files            = `git ls-files lib`.split("\n")
  spec.homepage         = 'https://github.com/wbotelhos/env_mock'
  spec.license          = 'MIT'
  spec.name             = 'env_mock'
  spec.summary          = 'Mock your ENVs.'
  spec.test_files       = Dir['spec/**/*']
  spec.version          = EnvMock::VERSION

  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop-rspec'
end
