# Variables
rand_num = rand(1..100)
guess_count = 0

# Methods Lists
def loading_dots()
  sleep 1
  print "."
  sleep 1
  print "."
  sleep 1
  puts "."
end

# Game Start
puts "Welcome To Guess The Number Challenge!"
sleep 2
print "Initializing"
loading_dots

puts "Let the game begin. What is your name?"
name = gets.chomp()
name = name.capitalize()
sleep 1
puts "Hey, #{name}! Hope you ready for the challenge."

while guess_count < 10
  puts "Can you guess the number from 1 - 100? "
  guess = gets.chomp.to_i
  guess_count = guess_count + 1
  guess_rmng = (10 - guess_count)


  if guess < rand_num
    puts "Sorry #{name}, your guess is way lower. You have #{guess_rmng} guess remaining. "
  elsif guess > rand_num
    puts "Sorry #{name}, your guess is way higher. You have #{guess_rmng} guess remaining. "
  end
break if guess == rand_num
end

if guess == rand_num
  puts "Congratulations #{name}! #{rand_num} is the correct answer. You guess the number just in #{guess_count} tries."
end
