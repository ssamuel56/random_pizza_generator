puts "Do you want extra toppings?"
print ">>"
user_choice = $stdin.gets.chomp

if user_choice == "yes" || user_choice == "y"
  def slice_size()
    ["Small", "Medium", "Large"].sample
  end
  def meat()
   ["Pepperoni", "Ham", "Chicken", "Beef", "EX Pepperoni", "EX Ham", "EX Chicken", "EX Beef"].sample
 end
  def cheese()
    ["3 Cheese", "Mozarella", "Cheddar", "EX 3 Cheese", "EX Mozarella", "EX Cheddar"].sample
  end
  def veggies()
     ["Mushrooms", "Onion", "Olives", "EX Mushrooms", "EX Onion", "EX Olives"].sample
  end
  def crust()
    ["Normal Crust", "Cheese Stuffed Crust"].sample
  end
  def sauce_special()
    ["Regular Sauce", "BBQ", "Ranch", "EX Pizza Sauce", "EX BBQ", "EX Ranch"].sample
  end
elsif user_choice == "no" || user_choice == "n"
  def slice_size()
    ["Small", "Medium", "Large"].sample
  end
  def meat()
   ["Pepperoni", "Ham", "Chicken", "Beef"].sample
 end
  def cheese()
    ["3 Cheese", "Mozarella", "Cheddar"].sample
  end
  def veggies()
     ["Mushrooms", "Onion", "Olives"].sample
  end
  def crust()
    ["Normal Crust", "Cheese Stuffed Crust"].sample
  end
  def sauce_special()
    ["Regular Sauce", "BBQ", "Ranch"].sample
  end
else
  puts "Please choose yes or no. \n"
  load 'pizza_picker.rb'
end

def price(meats, cheeses, vegg, sauces, psize)
  if meats == "Pepperoni" || meats == "Ham" || meats == "Chicken" || meats == "Beef"
    meat_price = 0
  else
    meat_price = 2
  end
  if cheeses == "3 Cheese" || cheeses == "Mozarella" || cheeses == "Cheddar"
    cheese_price = 0
  else
    cheese_price = 2
  end
  if vegg == "Mushrooms" || vegg == "Onion" || vegg == "Olives"
    veggie_price = 0
  else
    veggie_price = 1
  end
  if sauces == "Regular Sauce" || sauces == "BBQ" || sauces == "Ranch"
    sauce_price = 0
  else
    sauce_price = 2
  end
  if psize == "Small"
    size_price = 5
  elsif psize == "Medium"
    size_price = 7
  elsif psize == "Large"
    size_price = 10
  end

  numbre = meat_price.to_i + cheese_price.to_i + veggie_price.to_i + sauce_price.to_i + size_price.to_i
  return numbre
end

puts "How many pizzas would you like to make today?"
print ">>"
x = $stdin.gets.chomp.to_i

total_pricing = 0

def time(x, total_pricing)
  x.times do
    meats = meat()
    cheeses = cheese()
    vegg = veggies()
    crusts = crust()
    sauces = sauce_special()
    psize = slice_size()
    puts "\n"
    puts "#{psize} Pizza"
    puts meats
    puts cheeses
    puts vegg
    puts crusts
    puts sauces
    print "$"
    puts price(meats, cheeses, vegg, sauces, psize)
    puts "\n"
    total_pricing += price(meats, cheeses, vegg, sauces, psize)
  end
      print "Your total is $#{total_pricing}"
end

time(x, total_pricing)

puts "\n"
