class Triangle
  # write code here
  attr_accessor :ang1, :ang2, :ang3
  @sides = []
  def initialize(ang1, ang2, ang3)
    @ang1 = ang1
    @ang2 = ang2
    @ang3 = ang3
    @sides = [ang1, ang2, ang3]
  end

  def kind
    if @sides.any?{|side| side <= 0 || ((@sides[0] + @sides[1]) <= @sides[2]) || ((@sides[0] + @sides[2]) <= @sides[1]) || ((@sides[1] + @sides[2]) <= @sides[0])}
      raise TriangleError
    elsif ang1 == ang2 && ang2 == ang3
      return :equilateral
    elsif ang1 == ang2 || ang2 == ang3 || ang1 == ang3
      return :isosceles
    elsif ang1 != ang2 && ang2 != ang3 && ang1 != ang3
      return :scalene
    end

  end

  class TriangleError < StandardError
  end

end
