$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'formaticon/version'
Gem::Specification.new do |s|
  s.name = 'formaticon'
  s.version = Formaticon::VERSION.version
  s.summary = 'Configuration format helper'
  s.author = 'Chris Roberts'
  s.email = 'code@chrisroberts.org'
  s.homepage = 'http://github.com/chrisroberts/formaticon'
  s.description = 'Helpers for generating configurations'
  s.require_path = 'lib'
  s.add_dependency 'xml-simple'
  s.files = Dir['**/*']
end
