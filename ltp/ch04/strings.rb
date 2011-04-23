puts 'Write a program which asks for a person\'s first name, then middle, then last. Finally, it should greet the person using their full name.'
puts ''
puts 'First name:'
fn = gets.chomp
puts 'Middle name:'
mn = gets.chomp
puts 'Last name:'
ln = gets.chomp
puts 'Hello, ' + fn + ' ' + mn + ' ' + ln + '.'
puts ''
puts 'Write a program which asks for a person\'s favorite number. Have your program add one to the number, then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)'
puts ''
puts 'What is your favourite number ' + fn + '?'
fav = gets.chomp.to_i
fav = fav + 1
puts 'My favourite number is ' + fav.to_s + ', which is clearly a better number than yours.'
