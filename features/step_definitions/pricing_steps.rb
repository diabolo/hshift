Given /^the product fruit tea$/ do
  @fruit_tea = Product.create(:code=>'FR1', :name=>'Fruit Tea', :price=>311)
end

Given /^a buy one get one free on fruit tea$/ do
  Buy1Get1Free.new(@fruit_tea)
end

When /^I buy (\d+) fruit tea(?:s?)$/ do |amount|
  pending # express the regexp above with the code you wish you had
end

Then /^I should pay for (\d+) fruit tea(?:s?)$/ do |amount|
  pending # express the regexp above with the code you wish you had
end

