def solution(array)
  numb = 1
  k = 0

  hash = {}

  loop do
    break if hash.has_key?(k)
    hash[k] = numb
    numb += 1
    k = array[k]
  end
  numb - hash[k]
end

p solution([2,3,1,1,3])
p solution([0, 2, 1, 3, 1, 3, 1, 3])
p solution([1,2,0])
