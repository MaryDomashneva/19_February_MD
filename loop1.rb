def sequence_sum(begin_number, end_number, step)
  sum = 0
  step_sum = 0
  if begin_number <= end_number
    sum = begin_number
    step_sum = begin_number
    while (sum + step) <= end_number do
      sum = sum + step
      step_sum += sum
    end
  end
  return step_sum
end

puts sequence_sum(1, 5, 3)
