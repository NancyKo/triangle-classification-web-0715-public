class TriangleError < StandardError 
	def message
		"That's not allowed."
	end
end

class Triangle
  # write code here
  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def kind
  	if @side1 == 0 && @side2 == 0 && @side3 == 0 
  		raise TriangleError
  	elsif @side1 < 0 || @side2 < 0 || @side3 < 0
  		raise TriangleError
  	elsif (@side1 + @side2 < @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 < @side1)
  		raise TriangleError
  	elsif (@side1 == @side2) && (@side1 == @side3) && (@side2 == @side3)
  		return :equilateral
  	elsif (@side2 == @side3) || (@side1 == @side3) || (@side2 == @side1)
  		return :isosceles 
  	elsif @side1 != @side2 || @side1 != @side3
  		return :scalene
  	end  	
  end
end