# frozen_string_literal: true

Gem::Specification.new do |gem|
  gem.name          = 'banzai'
  gem.version       = '0.1.3-snapshot'
  gem.authors       = ['Dejan Simic']
  gem.email         = ['desimic@gmail.com']
  gem.description   = 'Toolkit for processing input using filters and pipelines'
  gem.summary       = 'Toolkit for processing input using filters and pipelines'
  gem.homepage      = 'https://github.com/dejan/banzai'
  gem.license       = 'MIT'

  gem.add_development_dependency 'rake', '~> 12.3.0'
  gem.add_development_dependency 'rubocop', '~> 0.53.0'
  gem.add_development_dependency 'yard', '~> 0.9.12'

  gem.files         = Dir['CHANGELOG.md', 'README.md', 'lib/**/*']
  gem.test_files    = Dir['spec/**/*']
  gem.require_paths = ['lib']
end
