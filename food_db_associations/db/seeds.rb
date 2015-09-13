# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c1 = Cuisine.create(name: 'Mexican', region: 'Central America', spicy: true, description: 'bold, spicy, and touching on all your tastebuds')
c2 = Cuisine.create(name: 'Thai', region: 'Southeast Asia', spicy: true, description: 'strong flavors, heavy use of coconut and coriander')
c3 = Cuisine.create(name: 'Scandinavian', region: 'North Europe, Iceland', spicy: false, description: 'seasonal, loads of fish, smoked, pickled, and preserved food')
c4 = Cuisine.create(name: 'Soul Food', region: 'Southern USA', spicy: false, description: 'a mix of french and west african, often using under-utilised ingredients')
c5 = Cuisine.create(name: 'Barbecue', region: 'USA', spicy: true, description: 'highly regional-specific, focus on meat and sauce, sweet, tangy, and sometimes spicy')

f1 = Food.create(name: 'pulled pork', meat_based: true)
f2 = Food.create(name: 'smoked lamb', meat_based: true)
f3 = Food.create(name: 'collard greens', meat_based: false)
f4 = Food.create(name: 'coconut milk', meat_based: false)
f5 = Food.create(name: 'chicken wings', meat_based: true)
f6 = Food.create(name: 'lemongrass', meat_based: false)
f7 = Food.create(name: 'huitlacoche', meat_based: false)
f8 = Food.create(name: 'black-eyed peas', meat_based: false)
f9 = Food.create(name: 'corn', meat_based: false)

c1.dishes.create(name: 'carnitas taco', cooking_technique: 'sandwich', main_ingredient: 'pulled pork', other_ingredients: 'tortilla, rice, beans, queso', food_id: 1)
c5.dishes.create(name: 'bbq chicken', cooking_technique: 'grill', main_ingredient: 'chicken', other_ingredients: 'bbq sauce', food_id: 5)
c2.dishes.create(name: 'Tom kha soup', cooking_technique: 'soup', main_ingredient: 'coconut milk', other_ingredients: 'mushrooms, chicken', food_id: 4)
c2.dishes.create(name: 'Tom yum soup', cooking_technique: 'soup', main_ingredient: 'lemongrass', other_ingredients: 'shrimp', food_id: 6)
c3.dishes.create(name: 'lamb salad', cooking_technique: 'salad', main_ingredient: 'smoked lamb', other_ingredients: 'dandelion leaves', food_id: 2)
c4.dishes.create(name: 'Hopper John', cooking_technique: 'casserole', main_ingredient: 'black-eyed peas', other_ingredients: 'vinegar, kale', food_id: 8)
c1.dishes.create(name: 'corn salsa', cooking_technique: 'salad', main_ingredient: 'corn', other_ingredients: 'lime, coriander, chili', food_id: 9)
c1.dishes.create(name: 'greens', cooking_technique: 'salad', main_ingredient: 'collard greens', other_ingredients: 'ham hocks', food_id: 3)
c1.dishes.create(name: 'maize smut taco', cooking_technique: 'sandwich', main_ingredient: 'huitlacoche', other_ingredients: 'tortilla, queso', food_id: 7)


puts 'seeded!'

