def createPhoneNumber(numbers)
  first_part_array = numbers[0 .. 2]
  second_part_array = numbers[3 .. 5]
  third_part_array = numbers[6 .. 9]
  a = first_part_array.join("")
  b = second_part_array.join("")
  c = third_part_array.join("")
  return "(#{a}) #{b}-#{c}"
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
#"(123) 456-7890"
#"(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..10].join}"
