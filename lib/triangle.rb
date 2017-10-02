class Triangle
  attr_reader :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

  def initialize(side_one,side_two,side_three)
  end

  def kind
    if side_one > 0 && side_two > 0 && side_three > 0
      if side_one == side_two && side_one == side_three
        return :equilateral
      elsif side_one != side_two && side_one != side_three && side_two =! side_three
        return :isosceles
      elsif ((side_one == side_two && side_one != side_three) || (side_one == side_three && side_one != side_two) || (side_two == side_three && side_two != side_one))
        return :scalene
      end
    end
  end

end
