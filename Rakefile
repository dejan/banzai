#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

begin
  require 'rspec/core/rake_task'
  require 'rubocop/rake_task'

  RSpec::Core::RakeTask.new(:spec)
  RuboCop::RakeTask.new

rescue LoadError => e
  puts e
end

Rake::TestTask.new do |t|
  t.libs << 'spec'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end

task default: %i(rubocop spec)
