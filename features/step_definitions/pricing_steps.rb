module PricingRulesStepHelper
  def add_pricing_rule(rule)
    @checkout ||= Checkout.new
    @checkout.pricing_rules << rule
  end
  
end
World(PricingRulesStepHelper)


Transform /^(\d+ fruit tea(?:s?))$/ do |step_arg|
  /^(\d+)/.match(step_arg)[0].to_i
end

Given /^the product fruit tea$/ do
  @fruit_tea = Product.create(:code=>'FR1', :name=>'Fruit Tea', :price=>311)
end

Given /^a buy one get one free on fruit tea$/ do
  add_pricing_rule(Buy1Get1Free.new(@fruit_tea))  
end

When /^I buy (\d+ fruit tea(?:s?))$/ do |amount|
  amount.times{@checkout.scan(@fruit_tea)}
end

Then /^I should pay for (\d+ fruit tea(?:s?))$/ do |amount|
  @checkout.total.should == @fruit_tea.price * amount
end

