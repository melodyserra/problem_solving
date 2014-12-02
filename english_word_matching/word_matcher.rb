word_array = []

File.open("wordsEn.txt").each do |line|
	word_array << line.chomp
end

puts "Please enter a string of characters with no spaces:"
user_string = gets.chomp.downcase

puts "Your results:"

user_string_array = user_string.split("")

matching_words = []

word_array.each do |word|
	one_array = word.split("")

	tmp_user_string_array = user_string_array.dup

	letter_counter = 0

	for i in 0...word.length
		if tmp_user_string_array.include? one_array[i]
			letter_counter += 1

			string_index = tmp_user_string_array.index(one_array[i])
			tmp_user_string_array.slice!(string_index)
		end
	end

	if letter_counter == word.length
		matching_words << word
	end
end

puts matching_words