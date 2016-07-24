def englishNumber number 
	if number < 0
		return "please enter a number that isnt negative"
	end

	if number == 0
		return "zero"
	end

	num_string = ""

	ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty"]
	teens = ["eleven", "twelve", "thirteen", "fouteen", "fifteen", "sixteen", "seventeen", "eighteen",
	 "nineteen"]

	 left = number
	 write = left/100
	 left = left - write*100

	 if write > 0
	 	hundreds = englishNumber write
	 	num_string = num_string + hundreds + "hundred"

	 	if left > 0
	 		num_string = num_string + " "
	 	end
	 end

	 if write > 0
	 	if ((write == 1) and (left > 0 ))
	 		num_string = num_string + teens[left -1]
	 		left =0
	 	else
	 		num_string = num_string + tens_place[write -1]
	 	end

	 	if left > 0
	 		num_string = num_string + " "
	 	end
	 end

	 write = left
	 left = 0

	 if write > 0 
	 	num_string = num_string + ones_place[write -1]
	 end

	 num_string
end

puts englishNumber (80)