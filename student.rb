class Student
 attr_accessor :first_name, :last_name, :phone_number

def introudction
	puts "hi, I'm #{first_name}!"
end

end

frank = Student.new
frank.first_name = "frank"
frank.introudction
