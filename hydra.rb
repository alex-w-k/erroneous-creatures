class Hydra

  attr_reader :name
  attr_accessor :heads, :deadness

  def initialize(name, heads)
    @name = name
    @heads = heads
    @deadness = false
  end

  def battle
    @heads -= 1
    @deadness = false ? true : false
  end

  def dead?
    if @heads == 0
      @deadness = true
    elsif @heads > 0
      @deadness = false
    end

  end

end
