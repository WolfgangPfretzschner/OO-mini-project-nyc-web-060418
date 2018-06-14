class User
  @@all = []
  attr_accessor :user_name

  def initialize(user_name)
    @user_name = user_name
  end

  def self.all
    @@all
  end
  def recipes
    # should return all of the recipes this user has recipe cards for

    RecipeCard.all.map do |rc|
      if rc.user == self
        rc.recipes
        # binding.pry
      end
    end.flatten.compact
  end
  def add_recipe_card(name_rc, recipes, date,rating)
    # should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    RecipeCard.new(name_rc, self, recipes, date, rating)
  end
end
