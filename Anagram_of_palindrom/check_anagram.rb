class CheckAnagram
  CHECKED_WORDS = ["mary", "rocketboys", "codility", "neveroddoreven", "kayak"]
  def solution(s)
    # convert checked words to sum of bytes
    checked_bytes = convert_to_bytes
    # convert possible anagram word to bytes and compare with checked word
    return true if checked_bytes.include?(bytes_calculator(s))
    false
  end

  private
  def convert_to_bytes
    checked_bytes = []
    CHECKED_WORDS.each { |word| checked_bytes << bytes_calculator(word) }
    checked_bytes
  end

  def bytes_calculator(word)
    word.downcase.bytes.inject(0){|sum,x| sum + x }
  end
end

puts CheckAnagram.new.solution("dooernedeevrvn")
puts CheckAnagram.new.solution("octobersky")
puts CheckAnagram.new.solution("army")
puts CheckAnagram.new.solution("codility")
puts CheckAnagram.new.solution("yaakk")
puts CheckAnagram.new.solution("aabcba")
puts CheckAnagram.new.solution("erysds")
