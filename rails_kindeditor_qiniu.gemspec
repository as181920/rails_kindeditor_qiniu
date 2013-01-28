# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_kindeditor/version"

Gem::Specification.new do |s|
  s.name        = "rails_kindeditor_qiniu"
  s.version     = RailsKindeditor::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Macrow"
  s.email       = "as181920@hotmail.com"
  s.homepage    = "https://github.com/as181920/rails_kindeditor_qiniu"
  s.summary     = "Kindeditor sotres file in qiniu"
  s.description = "rails_kindeditor will helps your rails app integrate with kindeditor, including images and files uploading."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

end
