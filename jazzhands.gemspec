# -*- encoding: utf-8 -*-

require File.expand_path('../lib/jazzhands/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'jazzhands'
  gem.version       = Jazzhands::VERSION
  gem.author        = 'David Davis'
  gem.email         = 'david@memorious.net'
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/daviddavis/jazzhands'
  gem.summary       = 'Exercise those fingers. Pry-based enhancements for the default Rails console. Based on the jazz_hands gem but updated for ruby 2.0 and 2.1.'
  gem.description   = "Spending hours in the rails console? Spruce it up and show off those hard-working hands! jazzhands replaces IRB with Pry, improves output through awesome_print, and has some other goodies up its sleeves."

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']

  # Dependencies
  gem.required_ruby_version = '>= 2.0'
  gem.add_runtime_dependency 'pry'
  gem.add_runtime_dependency 'pry-rails'
  gem.add_runtime_dependency 'pry-doc'
  gem.add_runtime_dependency 'pry-git'
  gem.add_runtime_dependency 'pry-stack_explorer'
  gem.add_runtime_dependency 'pry-remote', '>= 0.1.7'
  gem.add_runtime_dependency 'pry-byebug'
  gem.add_runtime_dependency 'hirb'
  gem.add_runtime_dependency 'coolline'
  gem.add_runtime_dependency 'awesome_print'
  gem.add_runtime_dependency 'railties', '>= 3.0', '< 5.0'
end
