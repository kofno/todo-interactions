require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |task|
  task.libs << "test"
  task.test_files = FileList['test/test_*.rb']
  task.verbose = true
end
