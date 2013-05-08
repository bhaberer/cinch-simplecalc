# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cinch/plugins/simplecalc/version'

Gem::Specification.new do |gem|
  gem.name          = "cinch-simplecalc"
  gem.version       = Cinch::Plugins::Simplecalc::VERSION
  gem.authors       = ["Brian Haberer"]
  gem.email         = ["bhaberer@gmail.com"]
  gem.description   = %q{Cinch Plugin that passes simple numeric math propblems to the Calc gem}
  gem.summary       = %q{Cinch Plugin to do simple math}
  gem.homepage      = "https://github.com/bhaberer/cinch-simplecalc"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'calc'
  gem.add_dependency 'cinch-cooldown'
end
