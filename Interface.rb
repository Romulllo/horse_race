puts 'Welcome to the horse race!'
sleep 1

horse_array = ['Storm', 'Pangaré', 'Galopante', 'Speed', 'Cherryblossom'] # here you can use %w for an array of words, search for it on google 

balance = 100

def timer_loading
	puts '.' # here you can write just p instead of puts
	sleep 1
end

play_again = 'y'
while play_again == 'y'

	horse_array.each_with_index {|horse, index| puts "#{index + 1} -- #{horse}"} # here you can put some space like this { |abc| abc } 
	sleep 1

  puts 'Place your bets on the lucky horse! -> Pick a number!'
	user_bet = gets.chomp.to_i

	winning_horse = horse_array.sample
	winning_index = horse_array.index(winning_horse)

	3.times {timer_loading}
	puts "#{winning_horse} won the race!"

	3.times {timer_loading}
	if winning_index == user_bet - 1
	  puts 'Congratulations, you won the bet'
	  balance += 20
	  puts "Your balance is #{balance}" # you can write a method to return this and next sentences to avoid repetead youself on lines 42 - 43
	  puts 'Do you want to play again? (y/n)'
	  play_again = gets.chomp
	else
    balance -= 10
	  if balance == 0
	    puts 'Sorry, you are out of the game'
	  	play_again = 'n'
	  else
	    puts 'Sorry, you lost some money!'
	    puts "Your balance is #{balance}"
	    puts 'Do you want to play again? (y/n)'
	    play_again = gets.chomp
	  end
	end
end