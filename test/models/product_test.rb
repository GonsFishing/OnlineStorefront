require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(
      title:       "How to fortnite",
      description: "Ninja's best seller",
      image_url:   "Brandbil.jpg"
    )
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0
    assert product.invalid?  
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png Fred.JPG Fred.jpg http://dhbj/jkkjdhs/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
  
    ok.each do |image_url|
      assert new_product(image_url).valid?
    end
  
    bad.each do |image_url|
      assert new_product(image_url).invalid?,
        "#{image_url} shouldn't be valid"
    end
  end

  private

  def new_product(image_url)
    Product.new(
      title:       "Sakamoto desu ga?",
      description: "Sakamoto is perfect",
      price:       200,
      image_url:   image_url
    )
  end
end
