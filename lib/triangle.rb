class Triangle
  attr_reader :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

  def initialize(side_one,side_two,side_three)
  end

  def kind
    if side_one > 0 && side_two > 0 && side_three > 0
      if side_one == side_two && side_one == side_three
        return :equilateral
      elsif side_one != side_two && side_one != side_three && side_two =! side_three
        return :scalene
      elsif ((side_one == side_two && side_one != side_three) || (side_one == side_three && side_one != side_two) || (side_two == side_three && side_two != side_one))
        return :isosceles
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message 
    "one or more side equal to 0, or non integer was used"
  end
  end

end
