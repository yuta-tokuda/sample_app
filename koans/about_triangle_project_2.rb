require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  raise TriangleError if a <= 0 || a + b <= c
  [nil, :equilateral, :isosceles, :scalene][[a, b, c].uniq.size]
end
end