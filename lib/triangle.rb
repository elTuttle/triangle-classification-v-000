class Triangle
  attr_reader :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene
  
  def initialize(side_one,side_two,side_three)
  end

  def kind
    if side_one == side_two && side_one == side_three && side_one > 0
      return :equilateral
    end
  end
  
end
