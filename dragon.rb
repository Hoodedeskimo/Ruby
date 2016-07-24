class Dragon

	def initialize name_is
		@name = name_is
		@asleep = false
		@stuff_in_bellu = 10
		@stuff_in_intestine = 0
		@dead = false
		puts @name + " is born"
		@first_turn = true
	end

	def born
		while @dead != true 

			if @first_turn
				puts " You have four commands you can type feed, walk, put to bed, toss and rock"
				@first_turn = false
			end

			puts "please type in a command"
			players_command = gets.chomp

			if players_command == "feed"
				feed
			elsif players_command == "walk"
				walk
			elsif players_command == "put to bed"
				put_to_bed
			elsif players_command == "toss"
				toss
			elsif players_command == "rock"
				rock
			elsif players_command == "exit"
				exit
					
			end
		end
	end

	def feed
		puts "You feed " + @name
		@stuff_in_bellu = 10
		passage_of_time
	end

	def walk
		puts "You walk " + @name
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "You put " + @name + " to bed"
		@asleep = true
		3.times do 
			if @asleep
				passage_of_time
			end
			if @asleep
				puts @name + " is snoring and filling the room with smoke"
			end
		end
		if @asleep
			@asleep = false
			puts @name + " Wakes up slowly"
		end
	end

	def toss
		puts "You toss " + @name + " up into the air"
		puts "He giggles, which singes your eyebrows"
		passage_of_time
	end

	def rock
		puts "You rock " + @name + " gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "...but wakes when you stop"
		end
	end
			

	private

	def hungry?
		@stuff_in_bellu <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time

		if @stuff_in_bellu > 0
			@stuff_in_bellu = @stuff_in_bellu - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly"
			end
				puts @name + " is starving! In desperation he ate you!"
				@dead = true
			exit
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops " + @name + " had an accident"
		end

		if hungry?
			if @asleep
				puts "He wakes up suddenly"
			end
			puts @name + " is hungry"
		end

		if poopy?
			if @asleep
				puts "He suddenly wakes up"
			end
			puts @name + " does the potty dance"
		end
	end

end

baby = Dragon.new "arthur"
baby.born
