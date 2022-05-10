require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  before :each do
    @cart = ShoppingCart.new("King Soopers", "30items")
    @product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @product2 = Product.new(:meat, 'chicken', 4.50, '2')
  end

  it 'exists & has attributes' do
    expect(@cart.name).to eq("King Soopers")
    expect(@cart.capacity).to eq(30)
    expect(@cart.products).to eq([])
  end


end
