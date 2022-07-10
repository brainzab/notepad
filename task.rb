class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts 'Что нужно сделать?'
    @text = $stdin.gets.chomp

    puts 'К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 16.06.2022'
    input = $stdin.gets.chomp

    @due_date = DateTime.parse(input)
  end

  def to_strings
    deadline = "Крайний срок: #{@due_date.strftime('%Y.%m.%d')}"
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"
    [deadline, @text, time_string]
  end
end
