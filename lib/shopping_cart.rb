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

  def details
    detail_hash = {
      name: @name,
      capacity: @capacity
    }

  end
end
