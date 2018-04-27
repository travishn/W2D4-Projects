def anagram?(str1, str2) #time complexity  n*n!
  str1.chars.permutation(str1.length).map(&:join).include?(str2)
end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")

def second_anagram?(str1, str2) #time_complexity O(n**2)
  str1_arr = str1.chars
  str2_arr = str2.chars
  clone1 = str1.dup.chars

  clone1.each do |letter|
    str1_arr.delete_at(str1_arr.index(letter))
    str2_arr.delete_at(str2_arr.index(letter)) unless str2_arr.index(letter).nil?
  end

  str1_arr.empty? && str2_arr.empty? ? true : false
end

p second_anagram?("gizmo", "sally")
p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2) #time_complexity O(n)
  str1.chars.sort! == str2.chars.sort!
end


def fourth_anagram?(str1, str2)

end
