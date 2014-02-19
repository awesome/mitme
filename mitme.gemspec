# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mitme/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'mitme'
  gem.version       = Mitme::VERSION
  gem.license       = 'MIT'
  gem.authors       = ['Chance Feick']
  gem.email         = %w(chancefeick@gmail.com)
  gem.homepage      = 'https://github.com/chancefeick/mitme'
  gem.description   = 'mitme adds an MIT license to your rails application using a generator.'
  gem.summary       = 'A library to add an MIT license to your rails application.'

  gem.add_dependency 'rails','>= 4.0.0'
  gem.rubyforge_project = 'mitme'

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = %w(lib)
end