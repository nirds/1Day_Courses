task :hi do 
  puts "hi"
end


desc "This says hi"
task :say_hi => [:hi] do
  puts "hello world!"
end

task :default => [:say_hi]

task :print_names do
  File.open('names') do |f|
    f.map{|l| print l}
  end
end

task :create_class_dir do
  Dir.mkdir('class') unless Dir.exists? 'class'
end

task :create_student_dir =>[:create_class_dir] do
  File.open('names') do |f|
    Dir.chdir('class')
    f.each do |line|
      Dir.mkdir(line.chomp) unless Dir.exists? line.chomp
    end
  end
end