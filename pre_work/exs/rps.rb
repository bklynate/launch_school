puts "Welcome to Rock Paper Scissors"
print "What is your name? "
name = gets.chomp.capitalize
puts "Okay, #{name} lets get started"

puts "\n"

puts "The rules of the game are as follows: "
puts "1. Rock beats Scissors"
puts "2. Scissors beats Paper"
puts "3. Paper beats Rock"
puts "4. All other pairings will result in a tie."

puts "\n"

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
    puts "Invalid Choice, Choose either 'r' | 'p' | 's'" unless ["r","s","p"].include?(player_choice)
  end until ["r","s","p"].include?(player_choice)

  puts "\n"

  puts "#{name} chooses #{player_choice.upcase}"

  puts "\n"

  print "Computer chooses...."

  sleep(2)

  puts "....#{computer_choice.upcase}!"

  case [player_choice, computer_choice]
  when ['r','s'], ['s','p'], ['p','r']
    puts "#{name} chose: #{choice_hash[player_choice]} | Computer chose: #{choice_hash[computer_choice]}"
    puts "#{name} Wins !!"
  when ['s','r'], ['p','s'], ['r','p']
    puts "#{name} chose: #{choice_hash[player_choice]} | Computer chose: #{choice_hash[computer_choice]}"
    puts "Computer Wins !!"
  else
    puts "Tie Game"
  end

  puts "\n"

  print "Would you like to play again? [y/n] "

  begin
    answer = gets.chomp.downcase
    puts "Invalid Choice, Choose 'y' or 'n'" unless ['y','n'].include?(answer)
  end until ['y','n'].include?(answer)
end until answer == 'n'
