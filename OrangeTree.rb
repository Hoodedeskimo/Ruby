class OrangeTree



	def initialize
		@is_tree_dead = false
    	@tree_age = 0
    	@tree_height= 0
    	@tree_oranges = 0
    	
    	puts " A seed is found"
    end
def grow
		puts "You plant an Orange tree"
		while  @is_tree_dead != true
			one_year_passed
		end
		exit
	end
   

    def return_height
		puts "your orange tree is " + @tree_height.to_s + " Metres tall"
	end

	def grow_oranges
		@tree_oranges = @tree_age * @tree_age
		puts @tree_oranges.to_s + " oranges grew this year"
	end

	def produce_oranges
		if @tree_age > 3
			grow_oranges
		end
	end

	def fall_oranges
		if @tree_oranges > 1
		@tree_oranges = 0
		puts "because you didnt eat the oranges All the oranges on the tree fell off"
	end
	end

	def kill
		if @tree_age > 10
			puts "The Orange tree has died"
			@is_tree_dead = true
		end
	end

    def one_year_passed
		@tree_age = @tree_age + 1
		@tree_height = @tree_height + 1
		return_height
		produce_oranges
		fall_oranges
		kill
	end

	
end

orange = OrangeTree.new
orange.grow