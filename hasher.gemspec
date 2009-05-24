# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hasher}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erik Kastner"]
  s.date = %q{2009-05-24}
  s.description = %q{A library that uses the same hash function as AppGen 4GL}
  s.email = %q{kastner@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE"
  ]
  s.files = [
    "LICENSE",
     "Rakefile",
     "VERSION",
     "cucumber.yml",
     "features/hashing.feature",
     "features/steps/env.rb",
     "features/steps/hasher_steps.rb",
     "hasher.gemspec",
     "lib/hasher.rb",
     "pkg/hasher-0.1.0.gem",
     "test/spec_hasher.rb"
  ]
  s.homepage = %q{http://github.com/kastner/hasher}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{hasher}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Hash strings just like AppGen does!}
  s.test_files = [
    "test/spec_hasher.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
