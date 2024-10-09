require "faker"

15.times do
  Task.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    due_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30),
    completed: [ true, false ].sample
  )
end

puts "15 tasks have been created!"