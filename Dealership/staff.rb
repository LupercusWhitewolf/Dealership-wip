class Staff
  #Formats the salesmans name
  def initialize(last, first, current, goal)
    @first = first.capitalize
    @last = last.capitalize
    @current = current
    @goal = goal
  end
  #Formats the greeting
  def name
    @totarget = (@goal - @current)
    puts "Salesman: #{@last}, #{@first} "
    puts "\t#{@first} has sold #{@current} cars this month. \n\tThey have #{@totarget} left to meet their goal."
  end
  #What happens when a sale is made
  def sale
    self.current += 1
    puts "#{@first} just made a sale! They now have #{@current} sales."
  end
  attr_reader :last
  attr_reader :first
  attr_accessor :current
  attr_reader :goal
end
staff1 = Staff.new("murdock", "matthew", 26, 164)

if __FILE__ == $0
  puts staff1.name
  puts staff1.sale
end
