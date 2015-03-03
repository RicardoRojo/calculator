# Calculator
# By Ricardo Rojo
# 28/02/2015
# ============
def divideme(first_number,second_number) # divides the numbers
  if second_number.to_i == 0
    puts "Sorry cannot divide by zero"
  else
    if first_number.to_i % second_number.to_i == 0
      puts ("#{first_number} / #{second_number} is :" + (first_number.to_i / second_number.to_i).to_s)
    else
      puts ("#{first_number} / #{second_number} is :" + (first_number.to_f / second_number.to_f).to_s)
    end
  end
end

def is_number?(string) # check if string contains only numbers. Else returns message
  string.split("").each do |char|
    if !char.between?('0','9') && char == "." && char == ","
      puts "#{string} is not a number. Start again"
      return false
    end
  end
end

def is_float?(string,any_float) # check if string contains only numbers. Else returns message
  if string.include?(".") || string.include?(",")
    return true
  else
    return any_float
  end
end

valid_operations = ["1","2","3","4"]

loop do
  puts "----------Calculator----------".center(50)
  any_float = false
  puts "operations: 1)sum 2)substract 3)multiply 4)divide (99) EXIT"
  operation = gets.chomp
  exit unless operation != "99"
  next unless valid_operations.include?(operation)

  puts "Introduce first number"
  first_number = gets.chomp
  next unless is_number?(first_number)
  any_float = is_float?(first_number,any_float)

  puts "introduce second number"
  second_number = gets.chomp
  next unless is_number?(second_number)
  any_float = is_float?(second_number,any_float)

  case operation.to_i
    when 1 
      print "#{first_number} + #{second_number} is: " 
      puts any_float ? "#{first_number.to_f + second_number.to_f}" : "#{first_number.to_i + second_number.to_i}" 
    when 2
      print "#{first_number} - #{second_number} is: " 
      puts any_float ? "#{first_number.to_f - second_number.to_f}" : "#{first_number.to_i - second_number.to_i}"
    when 3
      print "#{first_number} * #{second_number} is: " 
      puts any_float ? "#{first_number.to_f * second_number.to_f}" : "#{first_number.to_i * second_number.to_i}"
    when 4
      divideme(first_number,second_number)
    end
end
