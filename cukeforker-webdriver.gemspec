# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = 'cukeforker-webdriver'
  s.version = '0.0.1'
  s.authors = ["Derek Ekins"]
  s.description = 'Run webdriver with ports pre allocated - thanks go to Jari Bakken for the original implementation https://gist.github.com/949241'
  s.summary = "#{s.name}-#{s.version}"
  s.email = 'derek@spathi.com'
  s.homepage = "http://github.com/dereke/cukeforker-webdriver"

  s.platform = Gem::Platform::RUBY
  s.post_install_message = %{
(::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::)

Thank you for installing Cukeforker Web Driver extensions

(::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::) (::)

}

  s.add_dependency 'rspec'
  s.add_dependency 'cucumber'
  s.add_dependency 'gherkin'
  s.add_dependency 'capybara'
  s.add_dependency 'selenium-webdriver'
  s.add_dependency 'childprocess'

  s.add_development_dependency 'rake', '>= 0.9.2'

  s.rubygems_version = ">= 1.6.1"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec,features}/*`.split("\n")
  s.require_path = "lib"
end