class Triangle
  # write code here

  attr_reader :x, :y, :z 

  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 

  def kind 
    triangle_def
    if x == y && y == z 
      :equilateral 
    elsif x == y || x == z || y == z
      :isosceles
    else 
      :scalene 
    end 
  end 

  def triangle_def
    triangle = [(z + y > x), (x + y > z), (x + z > y)]
    [x, y, z].each do |s| 
      triangle == false if s <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError    
  end

end 
