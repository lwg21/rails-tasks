puts "Destroying all records"
Task.destroy_all

puts "Records destroyed. Database contains #{Task.all.size} tasks."

verbs = %w[Clean Tidy Organise Sort Trash Buy Purchase Plan Lend Facilitate Call Email Convince Apply Finish]
objects = %w[car forest house garage tools kitchen inbox computer phone apartment building entrance apps games]
places = %w[France Alsace Toronto Canada Berlin school university office]

100.times do
  description = "#{verbs.sample} #{objects.sample} in #{places.sample}"
  task = Task.create(description: description, completed: [true, false].sample)
  puts "Created task '#{task.description}' (id: #{task.id})"
end

puts "Database contains #{Task.all.size} tasks."
