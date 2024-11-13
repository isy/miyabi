require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :gensig do
  sh 'typeprof', '-r', 'nokogiri', '-o', 'sig/miyabi.gen.rbs', 'sig/miyabi.rbs', *Dir['lib/**/*.rb']
end
