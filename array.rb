puts "type in as many words as you like"

list_of_words = []
input = gets.chomp
while input != ""
	input = gets.chomp
	list_of_words.push input
end
	puts list_of_words.sort


	


