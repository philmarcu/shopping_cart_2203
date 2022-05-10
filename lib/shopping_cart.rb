class ShoppingCart


  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete("items").to_i
    @products = []
  end

  def add_product(product)
    @products.push(product)
  end

  def details #without parameters you can set up a hash the old fashion way
    detail_hash = {
      name: @name,
      capacity: @capacity
    }
  end



end

# -- Method for name: capacity hash I wanted to try making --#
# def details
#   detail_hash = {@name => @capacity.to_s.insert(2, "items")}
# end
