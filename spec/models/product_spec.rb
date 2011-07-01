require "spec_helper"

module ProductSpecHelper
  def valid_attributes
    {
      :name => "Fruit Tea",
      :price => 311,
      :code => 'FR1'
    }
  end
end

describe Product do
  include ProductSpecHelper

  before(:each) do
    @product = Product.new
  end

  it "should be invalid when created" do
    @product.should_not be_valid
  end

  it "should be valid when setup with valid attributes" do
    @product.attributes = valid_attributes
    @product.should be_valid
  end

  it "should be invalid without a name" do
    @product.attributes = valid_attributes.except(:name)
    @product.should_not be_valid
  end

  it "should be invalid without a price" do
    @product.attributes = valid_attributes.except(:price)
    @product.should_not be_valid
  end

  it "should be invalid without a code" do
    @product.attributes = valid_attributes.except(:code)
    @product.should_not be_valid
  end
end
