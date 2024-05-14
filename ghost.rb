# Author: Allan Palacios

# Create an array of hashes named 'ghosts' to hold ghost information
ghosts = [
  {
    name: 'Inky',
    age: 4,
    loves: 'reindeers',
    net_worth: 25.00
  },
  {
    name: 'Pinky',
    age: 5,
    loves: 'garden tools',
    net_worth: 14.00
  },
  {
    name: 'Blinky',
    age: 7,
    loves: 'ninjas',
    net_worth: 18.03
  },
  {
    name: 'Clyde',
    age: 6,
    loves: 'yarn',
    net_worth: 0.00
  }
]

# Accessing and printing the 'ghosts' array

ghosts.each do |ghost|
    ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
    ghost_info += "loves #{ghost[:loves]} and "
    ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
    puts ghost_info
end
