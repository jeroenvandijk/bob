require "rake/testtask"

rdoc_sources = %w(hanna/rdoctask rdoc/task rake/rdoctask)
begin
  require rdoc_sources.shift
rescue LoadError
  retry
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "bob"
    s.rubyforge_project = "integrity"
    s.summary = "Bob builds!"
    s.email = "info@integrityapp.com"
    s.homepage = "http://integrityapp.com"
    s.description = "Bob the Builder will build your code. Simple."
    s.authors = ["Nicolás Sanguinetti", "Simon Rozet"]
    s.files = FileList["[A-Z]*", "{lib}/**/*"]

    s.add_dependency "addressable"
    s.add_dependency "ninja"
    s.has_rdoc          = true
    if s.respond_to?(:add_development_dependency)
      s.add_development_dependency "sr-mg"
      s.add_development_dependency "contest"
      s.add_development_dependency "redgreen"
      s.add_development_dependency "ruby-debug"
    end
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

begin
  require "metric_fu" if RUBY_VERSION < "1.9"
rescue LoadError
end

begin
  require "mg"
  MG.new("bob.gemspec")
rescue LoadError
end

desc "Default: run all tests"
task :default => :test

SCMs = %w[git svn]

desc "Run unit tests"
task :test => SCMs.map { |scm| "test:#{scm}" } do
  ruby "test/bob_test.rb"
  ruby "test/test_test.rb"
end

SCMs.each { |scm|
  desc "Run unit tests with #{scm}"
  task "test:#{scm}" do
    ruby "test/scm/#{scm}_test.rb"
  end
}

(defined?(RDoc::Task) ? RDoc::Task : Rake::RDocTask).new do |rd|
  rd.main = "README.rdoc"
  rd.title = "Documentation for Bob the Builder"
  rd.rdoc_files.include("README.rdoc", "LICENSE", "lib/**/*.rb")
  rd.rdoc_dir = "doc"
end
