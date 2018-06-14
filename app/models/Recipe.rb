class Recipe
  @@all_reci = []
  attr_accessor :name_reci

  def initialize(name_reci)
    @name_reci = name_reci
    self.class.all << self
  end

  def self.all
    @@all_reci
  end

  def self.most_popular
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  end

  def users
    # should return the user instances who have recipe cards with this recipe
    RecipeCard.all.map do |rc|
      if rc.recipes.include?(self)
        rc.user
      end.compact
    end
  end

  def ingredients
    # should return all of the ingredients in this recipe
    RecipeIngredient.all.select{|ing|ing.recipe == self}.map{|rec|rec.name}

  end

  def allergens
    # should return all of the ingredients in this recipe that are allergens
     Allergen.all.select{|al|ingredients.include?(al.name)}

  end

  def add_ingredients(arr)
    rc_all = []
    RecipeIngredient.all.map do |rc|
      if rc.recipe == (self)
        rc_all << rc.ing_name.name
      end
    end
    rc_all << arr
    rc_all.flatten
    # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  end

end
