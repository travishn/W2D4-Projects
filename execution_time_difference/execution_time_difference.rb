def my_min(array) #time_complexity: n**2

  array.each_with_index do |el1, i1|
    array.each_with_index do |el2, i2|
      next if i1 == i2
      break if el2 < el1
      return el1 if i2 == array.length - 1 && el1 < el2
    end
  end

end

p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])

def fast_my_min(array) #time_complexity: n
  array.sort.first
end


def subsum(array) #time_complexity: n**2
  sums = []

  arr.each_index do |idx|
    arr.each_index do |idx2|
      next if idx >= idx2
      sums << array[idx..idx2]
    end
  end

  sums.map { |sub_arr| sub_arr.reduce(:+) }.max
end

def fast_subsum(array) #time_complexity: n with O(1) memory
  current_sum = 0
  max_sum = nil

  array.each_with_index do |el, idx|
     if idx == 0
       current_sum = el
       max_sum = el
       next
     end

     current_sum  = 0 if current_sum < 0
     current_sum += el
     max_sum = current_sum if current_sum > max_sum

  end
  max_sum
end


p fast_subsum([2, 3, -6, 7, -6, 7])
