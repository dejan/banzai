# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'banzai/version'

Gem::Specification.new do |gem|
  gem.name          = "banzai"
  gem.version       = Banzai::VERSION
  gem.authors       = ["Dejan Simic"]
  gem.email         = ["desimic@gmail.com"]
  gem.description   = %q{Simple toolkit for processing input using filter/pipeline concept}
  gem.summary       = %q{Simple toolkit for processing input using filter/pipeline concept}
  gem.homepage      = "https://github.com/dejan/banzai"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
