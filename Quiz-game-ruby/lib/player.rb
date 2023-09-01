class Player
    attr_accessor :name, :score
  
    def initialize(name)
      @name = name
      @score = 0
    end
  
    def increase_score(points)
      @score += points
    end
  end
  