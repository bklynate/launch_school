def space
  puts "\n"
end

def prompt(message)
  puts ">>> #{message}"
end

def print_prompt(message)
  print ">>> #{message}"
end

def validate_number(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

print_prompt "What is your name? "
user_name = gets.chomp.capitalize
space
prompt "This program is a mortgage calculator"
prompt "#{user_name}, this program requires 3 pieces of information"
sleep(1)
prompt "1. The 'Loan Amount'"
sleep(1)
prompt "2. The 'Interest Rate'"
sleep(1)
prompt "3. The 'Loan Duration' in years"
sleep(1)

# setting variables for the loop
interest_rate = ''
annual_interest_rate = ''
monthly_payment = ''
monthly_interest_rate = ''
loan_amount = ''
loan_duration = ''

loop do
  loop do
    space
    prompt "Lets begin..."
    sleep(1)
    print_prompt "Input 'Loan Amount': "
    loan_amount = gets.chomp
    print_prompt "Input 'Interest Rate' Ex(4.1% as 4.1): "
    interest_rate = gets.chomp
    print_prompt "Input 'Loan Duration' in years: "
    loan_duration = gets.chomp

    prompt "1 or more inputs are invalid" unless validate_number(loan_amount) &&
                                                 validate_number(loan_duration) &&
                                                 validate_number(interest_rate)
    space
    break if validate_number(loan_amount) && validate_number(loan_duration) && validate_number(interest_rate)
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_i *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months))

  formatted_monthly_payment = format('%.2f', monthly_payment)

  prompt "Total re-payment of loan: $#{format('%.2f', formatted_monthly_payment.to_f * 360)}"
  prompt "Monthly payment: $#{formatted_monthly_payment}"
  space
  print_prompt "Would you like you perform another calculation? [y/n] "
  answer = gets.chomp.downcase
  break if answer[0] == 'n'
end

space
prompt "'Thanks For Using - Comments Welcome' --Nathaniel"
