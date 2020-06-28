def fibs(n)
  answer = []
  if n == 0
    answer.append(n)
  elsif n >= 1
    answer += [0, 1]
  end
  if n >= 1
    for i in 0..(n - 2)
      answer.append(answer[i] + answer[i+1])
    end
  end
  return answer
end

def fibs_rec(n)
  if n < 2
    return [0 ,1][0..n]
  else 
    prev_sequence = fibs_rec(n-1)
    return prev_sequence.append(prev_sequence[-1] + prev_sequence[-2])
  end

end




p fibs(10)
p fibs_rec(10)
