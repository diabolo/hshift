class Buy1Get1Free < PricingRule 
  
  def initialize(product)
    raise "must supply product" unless product
    @product = product
  end
  
  def apply(products)
    discount = 0
    distinct(products).each do |product, count|
      discount += product.price * (count/2)
    end
    discount  
  end
  
  
  private
    def distinct(products)
      uniq = products.uniq
      Hash[*uniq.collect { |v| [v,products.count(v)]}.flatten]
     end
  
end
