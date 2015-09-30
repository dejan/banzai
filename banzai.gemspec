lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'banzai/version'

Gem::Specification.new do |gem|
  gem.name          = 'banzai'
  gem.version       = Banzai::VERSION
  gem.authors       = ['Dejan Simic']
  gem.email         = ['desimic@gmail.com']
  gem.description   = 'Toolkit for processing input using filters and pipelines'
  gem.summary       = 'Toolkit for processing input using filters and pipelines'
  gem.homepage      = 'https://github.com/dejan/banzai'
  gem.licence       = 'MIT'

  gem.add_development_dependency 'rubocop'

  gem.files         = Dir['CHANGELOG.md', 'README.md', 'lib/**/*']
  gem.test_files    = Dir['spec/**/*']
  gem.require_paths = ['lib']
end
