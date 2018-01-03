class Staff
  #Formats the salesmans name
  def initialize(last, first, current=0, goal)
    @first = first.capitalize
    @last = last.capitalize
    @current = current
    @goal = goal
    @staff = []
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

  def addstaff
    puts "\n Please enter the following information."
    puts "\n Last Name:"
    lname = gets.chomp.downcase
    puts "\n First Name:"
    fname = gets.chomp.downcase
    puts "\n Sales Goal:"
    sgoal = gets.chomp.to_i
    @staff.push(new Staff(lname, fname, 0, sgoal))
  end

  def printstaff
    @staff.each do |staff|
      puts name
    end
  end

  attr_reader :last
  attr_reader :first
  attr_accessor :current
  attr_reader :goal
end

def

addstaff
printstaff

staff1 = Staff.new("murdock", "matthew", 26, 164)

if __FILE__ == $0
  puts staff1.name
  puts staff1.sale
end
