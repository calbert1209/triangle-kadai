class Triangle
  def self.catagorize(*sides)

    if ARGV.count == 3
      #convert ARGV to array
      args = ARGV.map{|n| n.to_i }.sort
    elsif sides.count == 3
      args = sides.sort
    else
      return [nil, "incorrect arguements passed."]
    end
    
    #check if triangle
    if args[0] + args[1] <= args[2]
      return [false, "三角形じゃないです!＞＜"]
    elsif args.max == args.min
      return [true, "正三角形(equilateral triangle)ですね！"]
    elsif args[0] == args[1] || args[1] == args[2] || args[2] == args[0]
      return [true, "二等辺三角形(isoceles triangle)ですね！"]
    else
      return [true, "不等辺三角形(scalene triangle)ですね！"]
    end
  end
end

if ARGV.count == 3
  puts Triangle.catagorize()
end