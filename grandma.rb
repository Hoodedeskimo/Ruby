year = rand(2016).to_s
bye = "BYE"
puts "Welcome to grandma's house"
input = gets.chomp

while input != bye
if input != input.capitalize
	puts "huh, speak up sonny"
else
	puts "No not since " + year
end
end
