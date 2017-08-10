# Orient user to purpose of program & have user indicate readiness
puts "Welcome to the Random Menu Generator! Let's get cooking!\n"

# Determine how many items the user would like on their menu
puts "How many menu items would you like to see today?"
items = gets.chomp.to_i

# Have user build 3 lists of their chosen number of items each with food-related words
cooking_styles = []
adjectives = []
foods = []

puts "\nNow you're going to help us know what should go on the menu."

i = 1
puts "\nLet's start with some cooking styles.  Think sauteed, marinated, etc."
items.times do
  print "#{i}. "
  cooking_styles << gets.chomp.split.map(&:capitalize)*' '
  i += 1
end

i = 1
puts "\nNow adjectives.  Think spicy, sweet, etc."
items.times do
  print "#{i}. "
  adjectives << gets.chomp.split.map(&:capitalize)*' '
  i += 1
end

i = 1
puts "\nFinally, the actual food.  Think pancakes, pot roast, etc.."
items.times do
  print "#{i}. "
  foods << gets.chomp.split.map(&:capitalize)*' '
  i += 1
end

# Create & show numbered list of 10 random menu items using one word from each, not repeating any items from each list
puts "\nThat was hard work.  I don't know about you, but I'm ready to eat. Here's your menu!"

i = 1
items.times do
  adjective_sample = adjectives.sample
  style_sample = cooking_styles.sample
  food_sample = foods.sample
  puts "#{i}. #{adjective_sample} #{style_sample} #{food_sample}"
  adjectives.delete(adjective_sample)
  cooking_styles.delete(style_sample)
  foods.delete(food_sample)
  i += 1
end

%x[say "Enjoy your meal!"]
