require_relative '../config/environment.rb'



user_1 = User.new("Leann")
user_2 = User.new("Wolfi")

reci_1 = Recipe.new("Pepperoni Pizza")
reci_2 = Recipe.new("Meatloaf")
reci_3 = Recipe.new("Chocolate lave cake")

card_1 = RecipeCard.new("Leann's Recpies", user_1, [reci_2, reci_3], "5/25/2018", 4)

card_2 = RecipeCard.new("Leann's Recpies", user_2, [reci_1, reci_2, reci_3], "5/25/2018", 4)

ingr_1 = Ingredient.new("flour")
ingr_2 = Ingredient.new("pepperoni")
ingr_3 = Ingredient.new("beef")
ingr_4 = Ingredient.new("Chocolate")

allergen_1 = Allergen.new(user_1, ingr_4)
allergen_2 = Allergen.new(user_1, ingr_3)

rec_ingr_1 = RecipeIngredient.new(ingr_2, reci_3)
rec_ingr_2 = RecipeIngredient.new(ingr_4, reci_3)
rec_ingr_3 = RecipeIngredient.new(ingr_4, reci_1)
rec_ingr_4 = RecipeIngredient.new(ingr_3, reci_3)

p user_1.add_recipe_card("cool persons card",reci_1, "12/24/2018",8)

# reci_3.add_ingredients(["musshrooms", "oives", "anchovies"])
# p card_1.date




# p reci_3.allergens

Pry.start
