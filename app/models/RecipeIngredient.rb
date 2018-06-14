class RecipeIngredient
  @@all = []
  attr_accessor :ing_name, :recipe

  def initialize(ing_name, recipe )
    @ing_name = ing_name
    @recipe = recipe
    self.class.all << self
  end

  def self.all
    @@all
  end


end
