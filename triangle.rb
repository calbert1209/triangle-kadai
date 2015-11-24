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
      return [false, "三角形じゃないです!＞＜", "(invalid)"]
    elsif args.max == args.min
      return [true, "正三角形ですね！", "(equilateral triangle)"]
    elsif args[0] == args[1] || args[1] == args[2] || args[2] == args[0]
      return [true, "二等辺三角形ですね！", "(isoceles triangle)"]
    else
      return [true, "不等辺三角形ですね！" ,"(scalene triangle)"]
    end
  end
end

if ARGV.count == 3
  puts Triangle.catagorize()
elsif ARGV.count > 3 || ARGV.count < 3
  puts "please include 3 sides: '$ ruby triangle.rb <side> <side> <side>'"
end