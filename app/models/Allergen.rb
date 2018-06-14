class Allergen
  @@all = []
  attr_accessor :user, :ing_name

  def initialize(user, ing_name)
    @user = user
    @ing_name = ing_name
    self.class.all << self
  end

  def self.all
    @@all
  end


end
