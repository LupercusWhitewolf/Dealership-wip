class Car
  def initialize(make, model, year, price)
    @make = make.capitalize
    @model = model.capitalize
    @year = year
    @price = '$'"%.2f" % price
  end
  def info
    puts "The #{@year} #{@make} #{@model} is priced at #{@price}."
  end
end
car1 = Car.new("ford", "fusion", 2013, 23000)

if __FILE__ == $0
  puts car1.info
end
