def blank_line
  puts "\n"
end

def prompt(message)
  puts ">>> #{message}"
end

def print_prompt(message)
  print ">>> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

print_prompt "What is your name? "
user_name = gets.chomp.capitalize
blank_line
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
    blank_line
    prompt "Lets begin..."
    sleep(1)
    print_prompt "Input 'Loan Amount': "
    loan_amount = gets.chomp
    print_prompt "Input 'Interest Rate' Ex(4.1% as 4.1): "
    interest_rate = gets.chomp
    print_prompt "Input 'Loan Duration' in years: "
    loan_duration = gets.chomp
    inputs_are_valid = valid_number?(loan_amount) &&
      valid_number?(loan_duration) &&
      valid_number?(interest_rate)
    prompt "1 or more inputs are invalid" unless inputs_are_valid
    break if inputs_are_valid
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_i *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months))

  formatted_monthly_payment = format('%.2f', monthly_payment)

  blank_line
  prompt "Total re-payment of loan: $#{format('%.2f', formatted_monthly_payment.to_f * 360)}"
  prompt "Monthly payment: $#{formatted_monthly_payment}"
  blank_line
  print_prompt "Would you like you perform another calculation? [y/n] "
  play_again_answer = gets.chomp.downcase
  break if play_again_answer[0] == 'n'
end

blank_line
prompt "'Thanks For Using - Comments Welcome' --Nathaniel"
