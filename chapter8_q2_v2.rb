def what_people_like
  people = [
    { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
    { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
    { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
    { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
    { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
    { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
    { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
  ]

  puts "Enter what category to search"
  category = gets.chomp
  puts "Enter what value to search for"
  value = gets.chomp
  people.each { |i| if i[category] == value then puts i["name"] end }
end

what_people_like
