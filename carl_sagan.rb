# Author: Allan Palacios

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

# Here is an example of building a setence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]}"

# Define the data structures
carl  = {
  :toast => 'cosmos',
  :punctuation => [',', '.', '?'],
  :words => ['know', 'for', 'we']
}

sagan = [
  { :are => 'are', 'A' => 'a' },
  { 'waaaaaay' => 'way', :th3 => 'the' },
  'itself',
  { 2 => ['to'] }
]

# Build the sentence:"We are a way for the cosmos to know itself." using data from carl and sagan
puts "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[1][:th3]} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"