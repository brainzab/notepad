# frozen_string_literal: true

require_relative 'lib/post'
require_relative 'lib/link'
require_relative 'lib/task'
require_relative 'lib/memo'

puts 'Привет, я твой блокнот!'
puts 'Что хотите сделать?'

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = $stdin.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts 'Ура, запись сохранена!'
