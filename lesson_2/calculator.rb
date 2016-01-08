def prompt(message)
  puts ">> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number
end

def operator_to_message(operation)
  case operation
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

number1 = ""
number2 = ""

prompt "Welcome to Calculator! Enter your name: "
name = ''

loop do
  name = gets.chomp.capitalize!

  if name.empty?
    prompt "Use a valid name."
  else
    break
  end
end

loop do # main loop
  loop do
    prompt "Okay #{name}, Enter your first number: "
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "Not a valid number"
    end
  end

  loop do
    prompt "Enter your second number: "
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt "Not a valid number"
    end
  end

  operation_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt operation_prompt
  operation = ''
  loop do
    operation = gets.chomp

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt "Must pick 1, 2, 3 or 4"
    end
  end

  sleep(1)
  prompt "#{operator_to_message(operation)} two numbers..."

  result = case operation
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt "...The result is #{result}"
  prompt "Do you want to run another calculation? [y/n]"

  answer = gets.chomp.downcase
  break if answer[0] == 'n'
end

prompt "Thank you for using my program - Nathaniel Q"
