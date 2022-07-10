# frozen_string_literal: true

class Memo < Post
  def read_from_console
    puts 'Новая заметка (все, что пишется до строчки \"end\"):'

    @text = []
    line = nil
    until line == 'end' do
      line = $stdin.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Созадно: #{@created_at.strftime("%Y-%m-%d_%H_%M_%S.txt")} \n\r \n\r"
    return @text.unshift(time_string)
  end
end
