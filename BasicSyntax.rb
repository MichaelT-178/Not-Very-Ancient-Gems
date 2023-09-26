#I made this as a slightly faster reference than ChatGPT/Google

#Use command Line 
system("clear")

#Create a class
class Car

    #Adds "getter" and "setter" functionality
    attr_accessor :color, :year_made, :maker, :owner

    def initialize(color, year_made, maker, owner)
        @color = color
        @year_made = year_made
        @maker = maker
        @owner = owner
    end

    def get_age
        2023 - year_made.to_i
    end 
    
    #Return not necessary
    def to_s
        "Color: #{@color} Year made: #{@year_made} Maker: #{@maker}"
    end

end

#Create instance of objects
car1 = Car.new("Red", 2016, "Toyota", "Michael")
car2 = Car.new("Purple", 1999, "Ford", "Will")
car3 = Car.new("Blue", 2016, "Mercedes", "Rohan")

#Set an attribute
car1.maker = "Honda"
puts "Michaels car was made by #{car1.maker}"

#Get an attribute
rohans_car_color = car3.color
puts "Rohans car is #{rohans_car_color}"



#Create a list
cars = []

#Add cars to list
cars << car1
cars.push(car2)
cars.insert(cars.length, car3)

#Standard For loop. The to string method "to_s" will print car info.
for car in cars
    puts car
end

puts "\n"

#Different For Loop
cars.each do |car|
    puts car.maker
end

#Number For loop. Ouputs 0, 1, 2
for i in 0...3
    puts i
end 

puts "\nShow first element in cars list"
puts cars[0]
puts "Car is #{cars[0].get_age} years old"


#Read a file 
file_path = "StarWars.txt"

puts "\nFirst way to read a file output"

# Read file. 1st way
if File.exist?(file_path)
    File.open(file_path, 'r') do |file|
        while (line = file.gets)
            puts line
        end
    end
end

puts "\nSecond way to read a file output"

# Read file. 2nd way
File.foreach(file_path) do |line|
    puts line
end 

#Get user input 
print "\nEnter a number: "

user_num = gets.chomp
puts "You entered the number: #{user_num}"


#Type casting 
num_string = "1"
num_int = num_string.to_i
string_int = num_int.to_s

#Verify type
thing = "Hello"

puts "\nCheck if var is a certain type"

if thing.class == String 
    puts "Thing is a string"
end 

if thing.class == Integer
    puts "Thing is a string"
else 
    puts "This conditional is correct!"
end 

thing2 = false 

if thing2.is_a?(TrueClass) || thing2.is_a?(FalseClass)
    puts "Thing 2 is a boolean"
end

#Try/catch block equivalent 
puts "\nTry/catch block equivalent"

begin 
    error_eq = 5 / 0
rescue ZeroDivisionError => e
    puts "Error: #{e.message}"
end


#Conditional Expressions 
puts "\nValid conditional expression "
puts "true && true is #{true && true}. Should be true"
puts "true and false is #{true and false}. Should be false"
puts "true || true is #{true || true}. Should be true"
puts "true or false is #{true or false}. Should be true"
puts "2 > 1 is #{2 > 1}. Should be true"
puts "7 < 10 is #{7 < 10}. Should be true"

#Ternary 
puts "\nTernary Statement"
five_even = 5 % 2 == 0 ? "even" : "odd"
puts "5 is #{five_even}"

puts "\nLogical or / Nil coalescing "
#Logical or / Nil coalescing 
car4 = nil
car_str = car4 || "Car 4 is nil"
puts car_str

car4 = "Car 4 is now valid!"
car_str = car4 || "Car 4 is nil"
puts car_str

car5 = false 
car_str = car5 || "Car 5 is false"
puts car_str



puts "\nString comparisons"
#String comparisons 
str1 = "Hello"
str2 = "Hello"
str3 = "hello"
str3 = "Goodbye"

puts "\"Hello\" and \"Hello\" are the same (Exp: true). Is #{str1 == str2}"
puts "\"Hello\" and \"hello\" are the same when considering case (Exp: false). Is #{str1 == str3}"
puts "\"Hello\" and \"hello\" are the same when ignoring case (Exp: true). Is #{str1.casecmp(str2) == 0}\n\n"

puts "\"Hello\" and \"goodbye\" are the same when considering case (Exp: false). Is #{str1 == str3}"
puts "\"Hello\" and \"goodbye\" are NOT the same when ignoring case (Exp: true). Is #{str1.casecmp(str3) == 1}\n\n"
puts "\"Hello\" and \"hello\" are the same when ignoring downcase (Exp: true). Is #{str1.downcase == str2.downcase}"
puts "\"Hello\" and \"hello\" are the same when ignoring upcase (Exp: true). Is #{str1.upcase == str2.upcase}"