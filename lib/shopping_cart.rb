class ShoppingCart


  attr_reader :name, :capacity, :products #, :is_full
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete("items").to_i
    @products = []
    # @is_full = false
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

  def total_number_of_products
    total = 0
    @products.each do |product|
      total += product.quantity
    end
    return total
  end

  def is_full?
    total_number_of_products > @capacity
  end
end

# -- Method for name: capacity hash I wanted to try making --#
# def details
#   detail_hash = {@name => @capacity.to_s.insert(2, "items")}
# end
