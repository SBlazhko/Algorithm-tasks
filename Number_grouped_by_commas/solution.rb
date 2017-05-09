require "pry-rails"

class Solution
  def solution(numb)
    # convert integer to char array
    char_array = numb.to_s.split("")

    converted_array = []
    char_array.reverse.each_with_index do |val, i|
      converted_array << "," if i % 3 == 0 && i != 0
      converted_array << val
    end

    converted_array.reverse.join("")
  end
end

puts Solution.new.solution(1)
puts Solution.new.solution(10)
puts Solution.new.solution(100)
puts Solution.new.solution(1000)
puts Solution.new.solution(10000)
puts Solution.new.solution(100000)
puts Solution.new.solution(1000000)
puts Solution.new.solution(35235235232222)
puts Solution.new.solution(999999999)
