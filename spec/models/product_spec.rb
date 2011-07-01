require "spec_helper"

describe Product do
  include ProductSpecHelper

  before(:each) do
    @product = Product.new
  end

  it "should be invalid when created" do
    @product.should_not be_valid
  end

  it "should be valid when setup with valid attributes" do
    @product.attributes = product_valid_attributes
    @product.should be_valid
  end

  it "should be invalid without a name" do
    @product.attributes = product_valid_attributes.except(:name)
    @product.should_not be_valid
  end

  it "should be invalid without a price" do
    @product.attributes = product_valid_attributes.except(:price)
    @product.should_not be_valid
  end

  it "should be invalid without a code" do
    @product.attributes = product_valid_attributes.except(:code)
    @product.should_not be_valid
  end
end
