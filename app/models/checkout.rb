class Checkout 
  attr_accessor :pricing_rules, :items
  
  def initialize
    @pricing_rules = Array.new
    @items = Array.new
  end
   
  def scan(item)
    @items << item
  end 
  
  def total
    sub_total - discount
  end
  
  
  private
    def discount
      @pricing_rules.inject(0){|sum,item| sum + item.apply(@items)}
    end
    
    def sub_total
      @items.inject(0){|sum,item| sum + item.price}
    end
      
end