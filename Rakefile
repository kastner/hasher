begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "hasher"
    gemspec.summary = "Hash strings just like AppGen does!"
    gemspec.email = "kastner@gmail.com"
    gemspec.homepage = "http://github.com/kastner/hasher"
    gemspec.description = "A library that uses the same hash function as AppGen 4GL"
    gemspec.authors = ["Erik Kastner"]
    gemspec.rubyforge_project = "hasher"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

task :default => :features

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end
