require "rake/testtask"

begin
  require "hanna/rdoctask"
rescue LoadError
  require "rake/rdoctask"
end

begin
  require "metric_fu" if RUBY_VERSION < "1.9"
rescue LoadError
end

begin
  require "mg"
  MG.new("bob-the-builder.gemspec")
rescue LoadError
end

desc "Default: run all tests"
task :default => :test

SCMs = %w[git svn]

desc "Run unit tests"
task :test => SCMs.map { |scm| "test:#{scm}" } do
  ruby "test/bob_test.rb"
  ruby "test/background_engine/threaded_test.rb"
end

SCMs.each { |scm|
  desc "Run unit tests with #{scm}"
  task "test:#{scm}" do
    ruby "test/scm/#{scm}_test.rb"
  end
}

Rake::RDocTask.new do |rd|
  rd.main = "README"
  rd.title = "Documentation for Bob the Builder"
  rd.rdoc_files.include("README.rdoc", "LICENSE", "lib/**/*.rb")
  rd.rdoc_dir = "doc"
end
