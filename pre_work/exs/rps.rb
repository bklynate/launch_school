def blank_line
  puts "\n"
end

def prompt(message)
  puts ">>> #{message}"
end

prompt "Welcome to Rock Paper Scissors"
print ">>> What is your name? "
name = gets.chomp.capitalize
prompt "Okay, #{name} lets get started"

blank_line

prompt "The rules of the game are as follows: "
prompt "1. Rock beats Scissors"
prompt "2. Scissors beats Paper"
prompt "3. Paper beats Rock"
prompt "4. All other pairings will result in a tie."

blank_line

begin
  choice_hash = {
    'r' => 'Rock',
    'p' => 'Paper',
    's' => 'Scissors'
  }
  computer_choice = ["r","s","p"].sample
  print "Choose [r]ock / [p]aper / or [s]cissors: "
  begin
    player_choice = gets.chomp.downcase
    prompt "Invalid Choice, Choose either 'r' | 'p' | 's'" unless ["r","s","p"].include?(player_choice)
  end until ["r","s","p"].include?(player_choice)

  blank_line

  prompt "#{name} chooses #{player_choice.upcase}"

  blank_line

  print ">>> Computer chooses...."

  sleep(2)

  puts "....#{computer_choice.upcase}!"

  case [player_choice, computer_choice]
  when ['r','s'], ['s','p'], ['p','r']
    prompt "#{name} chose: #{choice_hash[player_choice]} | Computer chose: #{choice_hash[computer_choice]}"
    prompt "#{name} Wins !!"
  when ['s','r'], ['p','s'], ['r','p']
    prompt "#{name} chose: #{choice_hash[player_choice]} | Computer chose: #{choice_hash[computer_choice]}"
    prompt "Computer Wins !!"
  else
    prompt "Tie Game"
  end

  blank_line

  print ">>> Would you like to play again? [y/n] "

  begin
    answer = gets.chomp.downcase
    prompt "Invalid Choice, Choose 'y' or 'n'" unless ['y','n'].include?(answer)
  end until ['y','n'].include?(answer)
end until answer == 'n'
