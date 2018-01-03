class Customer
  #Formats the salesmans name
  def initialize(last, first, date)
    @first = first.capitalize
    @last = last.capitalize
    @date = date
  end
  def name
    puts "Customer: #{@last}, #{@first} "
    puts "\t#{@first} last made a purchase on #{@date}."
  end
  attr_reader :last
  attr_reader :first
  attr_reader :date
end
customer1 = Customer.new("Castle", "Frank", "Tuesday")

if __FILE__ == $0
  puts customer1.name
end
