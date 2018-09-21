
meat = ["Pepperoni", "Ham", "Chicken", "Beef", "EX Pepperoni", "EX Ham", "EX Chicken", "EX Beef"]
cheese = ["3 Cheese", "Mozarella", "Cheddar", "EX 3 Cheese", "EX Mozarella", "EX Cheddar"]
veggies = ["Mushrooms", "Onion", "Olives", "EX Mushrooms", "EX Onion", "EX Olives"]
crust = ["Normal Crust", "Cheese Stuffed"]
sauce_special = ["BBQ", "Ranch", "EX Pizza Sauce", "EX BBQ", "EX Ranch"]

puts "How many pizzas would you like to make today?"
x = $stdin.gets.chomp.to_i

x.times do
puts meat.sample
puts cheese.sample
puts veggies.sample
puts crust.sample
puts sauce_special.sample
puts "\n"
end
