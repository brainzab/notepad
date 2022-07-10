class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = $stdin.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 16.06.2022"
    input = $stdin.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Созадно: #{@created_at.strftime("%Y-%m-%d_%H_%M_%S.txt")} \n\r \n\r"
    deadline = "Крайний срок: #{@due_date}"
    return [deadline, @text, time_string]
  end
end
