require "rubygems-auto-rehash/version"

module Rubygems
  module Auto
    module Rehash; end
  end
end

auto_rehash = -> installer do
  if has_rbenv?
    installer.say 'rbenv rehash'
    system 'rbenv', 'rehash'
  end

  if in_zsh?
    installer.say 'rehash'
    system 'rehash'
  end
end

Gem.post_install(&auto_rehash)
Gem.post_uninstall(&auto_rehash)

def has_rbenv?
  ENV['RBENV_ROOT'] || File.exist?(File.expand_path("~/.rbenv")) && `which rbenv`
end

def in_zsh?
  ENV.has_key?('SHELL') && /zsh/i === ENV['SHELL']
end
