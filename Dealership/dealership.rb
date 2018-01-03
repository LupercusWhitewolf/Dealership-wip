require_relative 'staff'
require_relative 'inventory'
require_relative 'customer'

class Dealership
  def initialize(title)
    @title = title.capitalize
    @staff = []
    @customer = []
    @inventory = []
  end
end
