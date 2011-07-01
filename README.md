Solution Notes
==============

 - No generators were used in my solution. Generally I prefer not to use them.

 - I've only implemented buy one get one free. 

Bulk Purchase
=============

I would implement this by doing another Pricing rule with a different apply message. Nothing else should need to be changed

Cheats
======

My Cucumber features are looking at the database rather than the views. There isn't enough time or spec to implement views, and as I mentioned previously I'd rather not use generators.

Caveats
=======

My RSpec is a little rusty

Pre Requisites
==============

It really would help if you have a working rvm before using this project

Evaluating
==========

- cd into project
- accept rvm
- run bundle install
- run rake db:migrate
- run rake db:test:clone

- run cucumber
- run rspec spec

Look at the source code

Cheers

Andrew Premdas




Challenge
=========

    XXX quest for global domination has prompted us to open a supermarket - we sell only three products:

    Product code | Name         | Price
    -----------------------------------------
    FR1          | Fruit tea    |  ¬£3.11
    SR1          | Strawberries |  ¬£5.00
    CF1          | Coffee       | ¬£11.23

    The CEO is a big fan of buy-one-get-one-free offers and of fruit tea. He wants us to add a rule to do this.

    The COO, though, likes low prices and wants people buying strawberries to get a price discount for bulk purchases. If you buy 3 or more strawberries, the price should drop to ¬£4.50

    Our check-out can scan items in any order, and because the CEO and COO change their minds often, it needs to be flexible regarding our pricing rules.

    The interface to our checkout looks like this (shown in ruby):

     co = Checkout.new(pricing_rules)
     co.scan(item)
     co.scan(item)
     price = co.total

    Implement a checkout system that fulfills these requirements.

    Test data
    ---------

    Basket: FR1,SR1,FR1,FR1,CF1
    Total price expected: ¬£22.45

    Basket: FR1,FR1
    Total price expected: ¬£3.11

    Basket: SR1,SR1,FR1,SR1
    Total price expected: ¬£16.61