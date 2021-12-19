require 'pry'

class Triangle
  # write code here
  def initialize s1, s2, s3
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  class TriangleError < StandardError
    def message 
      "Invalid geometry. Check triangle side inputs."
    end
  end


  def kind
    arr = [@s1, @s2, @s3]
    # binding.pry

    if (arr.include? 0) || (@s1 >= @s2 + @s3 || @s2 >= @s1 + @s3 || @s3 >= @s1 + @s2) || (arr.filter {|num| num < 0 }.length > 0)
      raise TriangleError
    else
      if arr.uniq.length == 1
        return :equilateral
      elsif arr.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    end
  end

end

t1 = Triangle.new(4, 4, -4)

# binding.pry

