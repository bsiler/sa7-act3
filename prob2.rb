points = 0
# points for [room1, room2, room3]
room_points = [3, 5, 15]
user_input = ""
puts "Welcome to the room game!"
puts "You have #{points} points."
puts "Choose a room (1-3) to enter or 'exit' to end the game: "
user_input = gets.chomp

until user_input == "exit"
  user_input = user_input.to_i
  points_earned = room_points[user_input-1]
  puts "You entered Room #{user_input} and earned #{points_earned} points."
  points = points + points_earned
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  user_input = gets.chomp
end

puts "Game over! You collected a total of #{points} points."
