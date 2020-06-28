require 'pry'
def merge_sort(array)
  answer = []
  length = array.length
  if array.length <= 1
    return array
  else
    midpoint = length / 2
    lhs_array = array[0..(midpoint -1)]
    rhs_array = array[midpoint..-1]
    lhs = merge_sort(lhs_array) 
    lhs_pointer = 0
    lhs_length = lhs.length
    rhs = merge_sort(rhs_array)
    rhs_pointer = 0
    rhs_length = rhs.length
    while lhs_pointer < lhs_length && rhs_pointer < rhs_length
      if lhs[lhs_pointer] < rhs[rhs_pointer]
        answer.append(lhs[lhs_pointer])
        lhs_pointer += 1
      else
        answer.append(rhs[rhs_pointer])
        rhs_pointer += 1
      end
    end
    answer += lhs[lhs_pointer..-1] + rhs[rhs_pointer..-1]
    return answer
  end
end

p merge_sort([1,2,1,3,5,6,81,9,1,7])


