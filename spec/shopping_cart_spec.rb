require './lib/product'
require './lib/shopping_cart'

RSpec.describe ShoppingCart do
  before :each do
    @cart = ShoppingCart.new("King Soopers", "30items")
    @product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @product2 = Product.new(:meat, 'chicken', 4.50, '2')
    @product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    @product4 = Product.new(:produce, 'apples', 0.99, '20')
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
    # expected = { "King Soopers" => "30items"} #successful attempt at reconverting integer to string while adding characters in

    expect(@cart.details).to eq(expected)
  end

  it 'is not full by default' do
    @cart.add_product(@product1)
    @cart.add_product(@product2)
    @cart.add_product(@product3)

    expect(@cart.is_full?).to eq(false)
  end

  it 'can give the #total_number_of_products' do
    @cart.add_product(@product1)
    @cart.add_product(@product2)
    @cart.add_product(@product3)
    @cart.add_product(@product4)

    expect(@cart.is_full?).to eq(true)
  end

  it 'can sort products by the category' do
    @cart.add_product(@product1)
    @cart.add_product(@product2)
    @cart.add_product(@product3)
    @cart.add_product(@product4)

    expect(@cart.products_by_category(:paper)).to eq([@product1, @product3])
  end
end
