class Cars
  attr_reader :array_of_passengers

  def initialize(brand)
    @brand = brand
    @array_of_passengers = Array.new
    @tank = 80
  end

  def take_passenger(passenger_info)
    @array_of_passengers << passenger_info
  end

  def tank_change(fuel_consumption)
    @tank = @tank - fuel_consumption.to_i
    puts "You have #{@tank} lt left in your tank!"
  end

  def array_about_passenger
    @array_of_passengers.each do |n|
      puts n.name
    end
  end

end

class People
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

def new_journey
  puts "Which car brand do you whant to take? Please type:"
  user_input_1 = gets.chomp

  puts "Are you eligible to drive?Please type: Yes/No"
  user_answer_1 = gets.chomp

  if user_answer_1.downcase == "yes"
    puts "How many passengers do you want to take? Note, you can take up to 4 passengers"
    user_answer_2 = gets.chomp

    if user_answer_2.to_i <= 4 && user_answer_2.to_i >= 0
      car_1 = Cars.new(user_input_1)

      for n in 1..user_answer_2.to_i
        car_1.take_passenger(new_passenger_set)
      end

      km_drove = journey(car_1)

      puts "You have drove #{km_drove} km and you have #{user_answer_2.to_i} passangers in your car:"
      car_1.array_about_passenger

      return car_1

    else
      puts "Sorry, wrong number of passengers"
      return nil
    end

  else
    puts "Sorry, you can't take a car!"
    return nil
  end

end

def journey(car)
  puts "How many km do you want to drive?"
  user_answer_3 = gets.chomp
  if user_answer_3.to_i > 889
    puts "You do not have enough tank to take this journey, you would need to refill tank by: #{(((user_answer_3.to_i * 9) / 100) - 80)} lt"
  else
    lt = ((user_answer_3.to_i * 9) / 100)
    car.tank_change(lt.to_i)
  end

  return user_answer_3.to_i
end

def new_passenger_set
  puts "Please, enter the passanger name:"
  user_input_2 = gets.chomp
  passenger_1 = People.new(user_input_2)
  return passenger_1
end

def take_another_journey?
  puts "Would you like to take another journey? Yes/No"
  user_answer_4 = gets.chomp
  if user_answer_4.downcase == "yes"
    return true
  else
    return false
  end
end

def do_journeys
  car = new_journey
  if car == nil
    return
  end
  while take_another_journey? do
    car = new_journey
    if car == nil
      return
    end
  end
  car.array_of_passengers.clear
  puts "Your journey ended, all pasanges were taken off."
end

do_journeys
