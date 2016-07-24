def ask question
	good_answer=false
	while (not good_answer)
		puts question
		reply = gets.chomp.downcase
		if (reply == "yes" or reply == "no")
			good_answer = true

			if reply == "yes"
				answer = true
			else
				answer = false
			end
		else
			puts "please anser yes or no"
		end
	end
	answer
end

puts "hello and thank you for ..."
ask "do you like tacos"
ask "do you like burritos"
wetbed = ask "do you wet the bed"
puts wetbed
