module ProductSpecHelper
  def product_valid_attributes
    {
      :name => "Fruit Tea",
      :price => 311,
      :code => 'FR1'
    }
  end
  
  def valid_product
    Product.create(product_valid_attributes)
  end
end
