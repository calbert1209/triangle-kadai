require File.expand_path(File.dirname(__FILE__) + '/../triangle')

puts "\nRunning tests on Triangle class:"

describe ".catagorize()" do
  it "should return nil when more than 3 sides are provided." do
    output = Triangle.catagorize(3,4,5,7)
    expect(output[0]).to eq nil
  end
  
  it "should return nil when less than 3 sides are provided." do
    output = Triangle.catagorize(3,4)
    expect(output[0]).to eq nil
  end
  
  it "should return false when sides are too short." do
    output = Triangle.catagorize(2,2,5)
    expect(output[0]).to eq false
  end

  it "should return '正三角形' when 3 equal sides are provided." do
    output = Triangle.catagorize(7,7,7)
    expect(output[1].slice(0,4)).to eq '正三角形'
  end
  
  it "should return '二等辺三角形' when 2 equal sides are provided." do
    output = Triangle.catagorize(7,7,6)
    expect(output[1].slice(0,6)).to eql('二等辺三角形')
  end

  it "should return '不等辺三角形' when 3 inequal sides are provided." do
    output = Triangle.catagorize(7,6,5)
    expect(output[1].slice(0,6)).to eql('不等辺三角形')
  end
end