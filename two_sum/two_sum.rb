def bad_two_sum?(arr, target) #O(n**2)
  arr.each_index do |i1|
    arr.each_index do |i2|
      next if i1 >= i2
      return true if arr[i1] + arr[i2] == target
    end
  end

  false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
  
end
