# Author: Allan Palacios

require 'net/http'
require 'json'
require 'pp'

def get_tree_data(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def count_ash_trees(tree_data)
  ash_tree_count = 0

  tree_data.each do |tree|
    if tree['common_name']&.downcase&.include?('ash')
      ash_tree_count += 1
    elsif tree['scientific_name']&.downcase&.include?('fraxinus')
      ash_tree_count += 1
    elsif tree['genus']&.downcase == 'fraxinus' 
      ash_tree_count += 1
    elsif tree['species']&.downcase&.include?('ash') 
      ash_tree_count += 1
    end
  end

  ash_tree_count
end

# URL of the subset tree data
url_subset = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'

# Retrieve tree data from the subset URL
tree_data = get_tree_data(url_subset)

# Count Ash trees
ash_count = count_ash_trees(tree_data)
puts "Number of Ash trees in Winnipeg: #{ash_count}"