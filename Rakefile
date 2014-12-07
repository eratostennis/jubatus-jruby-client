require 'rubygems'
require 'bundler'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

task :test do |test|
  Rake::TestTask.new(:test) do |t|
    t.libs << 'lib' << 'test'
    t.test_files = FileList['test/**/*.rb']
    t.verbose = true
  end
end

task :integration_test do |test|
  Rake::TestTask.new(:integration_test) do |t|
    t.libs << 'lib' << 'integration_test'
    t.test_files = FileList['integration_test/**/*.rb']
    t.verbose = true
  end
end

task :default => [:build]
