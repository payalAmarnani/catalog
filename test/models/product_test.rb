require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


test "should not save product without title" do
  product=Product.new
  assert_not product.save, "Saved Product without title"
end

test "validate product name, description" do
	 @product=Product.new
	 # @product.name="Abs"
	 @product.save
	 @product.valid?
	assert_equal ["can't be blank"], @product.errors.messages[:name]
end
end
