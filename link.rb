# frozen_string_literal: true

class Link < Post
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts 'Адрес ссылки url:'
    @url = $stdin.gets.chomp

    puts 'Что за ссылка?'
    @text = $stdin.gets.chomp
  end

  def to_strings
    time_string = "Созадно: #{@created_at.strftime("%Y-%m-%d_%H_%M_%S.txt")} \n"
    [@url, @text, time_string]
  end
end
