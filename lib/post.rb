# frozen_string_literal: true

class Post
  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = []
  end

  def read_from_console; end
  def to_strings; end

  def save
    file = File.new(file_path, 'w')
    to_strings.each { |string| file.puts(string) }
    file.close
  end

  def file_path
    current_path = 'File.dirname(__FILE__)'
    file_time = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H_%M_%S.txt")
    "#{current_path}/#{self.class.name}_#{file_time}.txt"
  end

end
