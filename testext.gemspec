# -*- encoding: utf-8 -*-

require File.expand_path('../lib/testext/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "testext"
  gem.version       = Testext::VERSION
  gem.summary       = %q{TODO: Summary}
  gem.description   = %q{TODO: Description}
  gem.license       = "MIT"
  gem.authors       = ["Renaud AUBIN"]
  gem.email         = "root@renaud.io"
  gem.homepage      = "https://github.com/nibua-r/testext"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'yard', '~> 0.8'
  gem.add_development_dependency 'pry', '~> 0.9.10'
end
