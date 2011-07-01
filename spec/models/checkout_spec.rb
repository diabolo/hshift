require 'spec_helper'

describe Checkout do
  include ProductSpecHelper
  
  before(:each) do
    @checkout = Checkout.new
  end
  
 
  it "should have pricing rules" do
    @checkout.pricing_rules.should be_empty
  end
  
  it "should scan items" do
    @checkout.scan(valid_product)
    @checkout.items.count.should == 1
  end
  
  it "should calculate total" do
    product = valid_product
    @checkout.scan(product)
    @checkout.total.should == product.price
  end
  
  context "total" do
    context "pricing" do
      it "should apply rules" do
        rule = double('PricingRule')
        rule.should_receive(:apply).and_return(50)
        @checkout.pricing_rules << rule
        @checkout.scan(valid_product)
        @checkout.total
      end
    end
  end
end