class Genre
  attr_accessor :name, :items

  def initialize(name)
    @name = name
    @items = []
  end
end
