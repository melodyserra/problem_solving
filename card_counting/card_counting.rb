class Counting
	def play_game
		cards_available = ["A", "K", "Q", "J", "T", "9", "8", "7", "6", "5", "4", "3", "2"]
		suits_available = ["c", "h", "s", "d"]

		puts "How many decks would you like to play with?"
		decks = gets.chomp.to_i

		#Start initial count as per rules

		@count = 4 - (decks * 4)

		#Multiply array by the number of decks

		current_shoe = cards_available * decks

		#Push all deck cards to an array for the player

		player_cards = []

		current_shoe.each do |card|
			suits_available.each do |suit|
				player_cards << card + suit
			end
		end

		#Randomize the array

		player_cards.shuffle!

		#Generate 4 random stops along the way

		random_stops = []

		4.times do
			random_stops << Random.new.rand(0...(52 * decks))
		end

		#Perform the count programmatically

		player_cards.each_with_index do |card, index|
			current_card = card[0]

			if "234567".include? current_card
				@count += 1
			elsif "TJQKA".include? current_card
				@count -= 1
			end

			puts card

			if random_stops.include? index
				ask_user
			end

			#Sleep for half a second

			sleep(0.5)
		end
		
		ask_user
		replay_option
	end

	def ask_user
		puts "What is the count?"
		user_count = gets.chomp.to_i

		#Evaluate a win

		if @count == user_count
			puts "Great job! You were right!"
		else
			puts "Sorry... the count was actually " + @count.to_s
		end
	end

	def replay_option
		puts "Do you want to play again? yes/no"
		continue_playing = gets.chomp

		if continue_playing == "yes"
			play_game
		else
			puts "Thanks for playing!"
		end
	end
end

#Start the game

Counting.new.play_game