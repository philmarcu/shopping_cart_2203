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

  it 'can add products' do
    @cart.add_product(@product1)
    @cart.add_product(@product2)

    expect(@cart.products).to eq([@product1, @product2])
  end

  it 'can give the details' do
    @cart.add_product(@product1)
    @cart.add_product(@product2)

    expected = {name: "King Soopers", capacity: 30}

    expect(@cart.details).to eq(expected)
  end
end
