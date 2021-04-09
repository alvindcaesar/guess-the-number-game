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

def easy
  rand_num = rand(1..100)
  guess_count = 0

  puts rand_num
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
    puts "Congratulations #{name}! #{rand_num} is the correct answer. You guess the number just in #{guess_count} attempts."
  end

end

def medium
  rand_num = rand(1..100)
  guess_count = 0

  puts rand_num
  puts "Let the game begin. What is your name?"
  name = gets.chomp()
  name = name.capitalize()
  sleep 1
  puts "Hey, #{name}! Hope you ready for the challenge."

  while guess_count < 5
    puts "Can you guess the number from 1 - 100? "
    guess = gets.chomp.to_i
    guess_count = guess_count + 1
    guess_rmng = (5 - guess_count)

    if guess < rand_num
      puts "Sorry #{name}, your guess is way lower. You have #{guess_rmng} guess remaining. "
    elsif guess > rand_num
      puts "Sorry #{name}, your guess is way higher. You have #{guess_rmng} guess remaining. "
    end

  break if guess == rand_num
  end

  if guess == rand_num
    puts "Congratulations #{name}! #{rand_num} is the correct answer. You guess the number just in #{guess_count} attempts."
  end

end

def hard
  rand_num = rand(1..100)
  guess_count = 0

  puts rand_num
  puts "Let the game begin. What is your name?"
  name = gets.chomp()
  name = name.capitalize()
  sleep 1
  puts "Hey, #{name}! Hope you ready for the challenge."

  while guess_count < 3
    puts "Can you guess the number from 1 - 100? "
    guess = gets.chomp.to_i
    guess_count = guess_count + 1
    guess_rmng = (3 - guess_count)

    if guess < rand_num
      puts "Sorry #{name}, your guess is way lower. You have #{guess_rmng} guess remaining. "
    elsif guess > rand_num
      puts "Sorry #{name}, your guess is way higher. You have #{guess_rmng} guess remaining. "
    end

  break if guess == rand_num
  end

  if guess == rand_num
    puts "Congratulations #{name}! #{rand_num} is the correct answer. You guess the number just in #{guess_count} attempts."
  end

end
# Game Start Here
puts "Welcome To Guess The Number Challenge!"
sleep 2
# print "Initializing"
# loading_dots
puts "Choose your difficulty level: "
puts "[1] EASY   - 10 Tries"
puts "[2] MEDIUM - 5  Tries"
puts "[3] HARD   - 3  Tries"
puts "Please choose 1, 2, or 3 :"
diff_level = gets.chomp


  case diff_level
   when "1"
     puts "You have chosen EASY level!"
     sleep 2
     easy

   when "2"
     puts "You have chosen MEDIUM level!"
     sleep 2
     medium

   when "3"
     puts "You have chosen HARD level!"
     sleep 2
     hard
    
end
