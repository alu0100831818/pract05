
task :test do
  ruby "test/Test_Receta.rb"
end

task :default => [:test]
