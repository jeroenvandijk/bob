# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bob}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nicol\303\241s Sanguinetti", "Simon Rozet"]
  s.date = %q{2009-09-16}
  s.description = %q{Bob the Builder will build your code. Simple.}
  s.email = %q{info@integrityapp.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/bob.rb",
     "lib/bob/buildable.rb",
     "lib/bob/builder.rb",
     "lib/bob/scm.rb",
     "lib/bob/scm/abstract.rb",
     "lib/bob/scm/git.rb",
     "lib/bob/scm/svn.rb",
     "lib/bob/test.rb",
     "lib/bob/test/buildable_stub.rb",
     "lib/bob/test/scm/abstract.rb",
     "lib/bob/test/scm/git.rb",
     "lib/bob/test/scm/svn.rb"
  ]
  s.homepage = %q{http://integrityapp.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{integrity}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Bob builds!}
  s.test_files = [
    "test/bob_test.rb",
     "test/engine/threaded_test.rb",
     "test/helper.rb",
     "test/scm/git_test.rb",
     "test/scm/svn_test.rb",
     "test/test_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_runtime_dependency(%q<ninja>, [">= 0"])
      s.add_development_dependency(%q<sr-mg>, [">= 0"])
      s.add_development_dependency(%q<contest>, [">= 0"])
      s.add_development_dependency(%q<redgreen>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
    else
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<ninja>, [">= 0"])
      s.add_dependency(%q<sr-mg>, [">= 0"])
      s.add_dependency(%q<contest>, [">= 0"])
      s.add_dependency(%q<redgreen>, [">= 0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
    end
  else
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<ninja>, [">= 0"])
    s.add_dependency(%q<sr-mg>, [">= 0"])
    s.add_dependency(%q<contest>, [">= 0"])
    s.add_dependency(%q<redgreen>, [">= 0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
  end
end
