require "spec_helper"

describe Buy1Get1Free do


  it "should not construct without a product" do
    lambda {Buy1Get1Free.new}.should raise_error
  end
  
  context "apply" do
    before(:each) do
      @fruit_tea = Product.create(:code=>'FR1', :name=>'Fruit Tea', :price=>311)
      @rule = Buy1Get1Free.new(@fruit_tea)
      @products = []
    end
    
    it "should not discount if one product is bought" do
      @products << @fruit_tea
      discount = @rule.apply(@products)
      discount.should == 0
    end
    
    
    it "should discount if two matching products are bought" do
      @products << @fruit_tea << @fruit_tea
      discount = @rule.apply(@products)
      discount.should == @fruit_tea.price
    end
    
    it "should discount once if 3 matching products are bought" do
      3.times{@products << @fruit_tea}
      discount = @rule.apply(@products)
      discount.should == @fruit_tea.price
    end
    
    it "should discount twice if 4 matching products are bought" do
      4.times{@products << @fruit_tea}
      discount = @rule.apply(@products)
      discount.should == @fruit_tea.price * 2
    end
    
  end

end