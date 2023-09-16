def pythagorean_theorem(a, b)
    puts "\nIf A is #{a} and B is #{b}, then C is..."
    c_squared =  a ** 2 + b ** 2
    c = Math.sqrt(c_squared)
    real_c =  sprintf("%.2f", c) #
    return real_c
end 

print 'Please enter a number for A: '
num1 = gets.chomp.to_i

print 'Please enter another number B: '
num2 = gets.chomp.to_i

puts pythagorean_theorem(num1, num2) 




