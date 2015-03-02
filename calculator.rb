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
    if !char.between?('0','9')
      puts "#{string} is not a number. Start again"
      return false
    end
  end
end

valid_operations = ["1","2","3","4","99"]

begin
  puts "----------Calculator----------".center(50)

  puts "operations: 1)sum 2)substract 3)multiply 4)divide (99) EXIT"
  operation = gets.chomp
  break unless operation != "99"
  next unless valid_operations.include?(operation)

  puts "Introduce first number"
  first_number = gets.chomp
  next unless is_number?(first_number)

  puts "introduce second number"
  second_number = gets.chomp
  next unless is_number?(second_number)

  case operation.to_i
    when 1 
      puts "#{first_number} + #{second_number} is: " + (first_number.to_i + second_number.to_i).to_s
    when 2
      puts "#{first_number} - #{second_number} is: " + (first_number.to_i - second_number.to_i).to_s
    when 3
      puts "#{first_number} * #{second_number} is: " + (first_number.to_i * second_number.to_i).to_s
    when 4
      divideme(first_number,second_number)
    end
end while operation != 99
