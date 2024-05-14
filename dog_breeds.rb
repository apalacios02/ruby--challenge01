# Author: Allan Palacios

require 'net/http'
require 'json'

def get_dog_breeds
  url = 'https://dog.ceo/api/breeds/list/all'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def print_dog_breeds(breeds)
  if breeds['status'] == 'success'
    breeds['message'].each do |breed, sub_breeds|
      puts "* #{breed.capitalize}"
      sub_breeds.each do |sub_breed|
        puts "  * #{sub_breed.capitalize}"
      end
    end
  else
    puts "Failed to retrieve dog breeds. Please try again later."
  end
end
