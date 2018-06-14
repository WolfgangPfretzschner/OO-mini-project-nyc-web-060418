class RecipeCard
  @@all_reci = []
  attr_accessor :name_rc, :user, :recipes, :date, :rating

  def initialize(name_rc, user, recipes = [], date, rating)
    @name_rc = name_rc
    @user = user
    @recipes = recipes
    @date = date
    @rating = rating

    self.class.all << self
  end

  def self.all
    @@all_reci
  end

end
