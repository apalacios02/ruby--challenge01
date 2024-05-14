# Author: Allan Palacios

# Create an array of hashes named 'ghosts' to hold ghost information
ghosts = [
  {
    name: 'Inky',
    age: 4,
    interests: 'reindeers',
    bank_balance: 25.00
  },
  {
    name: 'Pinky',
    age: 5,
    interests: 'garden tools',
    bank_balance: 14.00
  },
  {
    name: 'Blinky',
    age: 7,
    interests: 'ninjas',
    bank_balance: 18.03
  },
  {
    name: 'Clyde',
    age: 6,
    interests: 'yarn',
    bank_balance: 0.00
  }
]

# Accessing and printing the 'ghosts' array
puts "List of ghosts:"
ghosts.each do |ghost|
  puts "#{ghost[:name]} is #{ghost[:age]} years old, loves #{ghost[:interests]}, and has $#{'%.2f' % ghost[:bank_balance]} in the bank."
end