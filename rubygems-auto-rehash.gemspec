# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubygems-auto-rehash/version"

Gem::Specification.new do |s|
  s.name        = "rubygems-auto-rehash"
  s.version     = Rubygems::Auto::Rehash::VERSION
  s.authors     = ["aereal"]
  s.email       = ["aereal@kerare.org"]
  s.homepage    = ""
  s.summary     = %q{run `rehash' command if rbenv or zsh installed}
  s.description = %q{run `rehash' command if rbenv or zsh installed}

  s.rubyforge_project = "rubygems-auto-rehash"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
