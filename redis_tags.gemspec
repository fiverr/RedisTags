# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis_tags/version'

Gem::Specification.new do |gem|
  gem.name          = "redis_tags"
  gem.version       = RedisTags::VERSION
  gem.authors       = ["Elad Meidar"]
  gem.email         = ["elad@eizesus.com"]
  gem.description   = "A tagging system implemented in Redis graph"
  gem.summary       = "This implementation consists over 3 basic rules. keep who is tagged, keep what is tagged and keep all tags."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "redis", "2.2.2"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "ruby-debug"
end
