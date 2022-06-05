# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'
require 'net/http'
require 'openssl'
require 'json'

def api_key
  ENV["API_FOOTBALL_KEY"]
end

puts "Cleaning the db..."
Signing.destroy_all
Player.destroy_all
Team.destroy_all


# pl_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

# # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

# http = Net::HTTP.new(pl_url.host, pl_url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(pl_url)
# request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
# request["X-RapidAPI-Key"] = api_key

# response = http.request(request)



# my_hash = JSON.parse(response.read_body)
# result = my_hash["response"].first
# file = URI.open("#{result["player"]["photo"]}")
# puts "..."
# # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
# player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
# player.photo.attach(io: file, filename: "image.png")
# # puts result
# puts "Created #{Player.count} player"

# # 30.times do
# #   Player.create!(name: Faker::Sports::Football.unique.player)
# # end

# # puts "created #{Team.count} team"
# # puts "created #{Player.count} players"
puts "Creating premier ligue players.."

40.times do |i|
  puts '...'
  pl_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=#{i}")

  # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

  http = Net::HTTP.new(pl_url.host, pl_url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(pl_url)
  request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
  request["X-RapidAPI-Key"] = api_key

  response = http.request(request)



  my_hash = JSON.parse(response.read_body)
  my_hash["response"].each do |result|
    file = URI.open("#{result["player"]["photo"]}")
    # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
    player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
    player.photo.attach(io: file, filename: "image#{i}.png")
    # puts result
  end
end


puts "Creating la liga players.."
41.times do |i|
  puts '...'
  laliga_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=#{i}")

  # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

  http = Net::HTTP.new(laliga_url.host, laliga_url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(laliga_url)
  request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
  request["X-RapidAPI-Key"] = api_key

  response = http.request(request)



  my_hash = JSON.parse(response.read_body)
  my_hash["response"].each do |result|
    file = URI.open("#{result["player"]["photo"]}")
    # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
    player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
    player.photo.attach(io: file, filename: "image#{i}.png")
    # puts result
  end
end


puts "Creating serie a players.."
46.times do |i|
  puts '...'
  seriea_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=#{i}")

  # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

  http = Net::HTTP.new(seriea_url.host, seriea_url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(seriea_url)
  request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
  request["X-RapidAPI-Key"] = api_key

  response = http.request(request)



  my_hash = JSON.parse(response.read_body)
  my_hash["response"].each do |result|
    file = URI.open("#{result["player"]["photo"]}")
    # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
    player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
    player.photo.attach(io: file, filename: "image#{i}.png")
    # puts result
  end
end


puts "Creating bundesliga players.."
35.times do |i|
  puts '...'
  bundesliga_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=#{i}")

  # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

  http = Net::HTTP.new(bundesliga_url.host, bundesliga_url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(bundesliga_url)
  request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
  request["X-RapidAPI-Key"] = api_key

  response = http.request(request)



  my_hash = JSON.parse(response.read_body)
  my_hash["response"].each do |result|
    file = URI.open("#{result["player"]["photo"]}")
    # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
    player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
    player.photo.attach(io: file, filename: "image#{i}.png")
    # puts result
  end
end


puts "Creating ligue 1 players.."
41.times do |i|
  puts '...'
  ligue1_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=#{i}")

  # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

  http = Net::HTTP.new(ligue1_url.host, ligue1_url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(ligue1_url)
  request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
  request["X-RapidAPI-Key"] = api_key

  response = http.request(request)



  my_hash = JSON.parse(response.read_body)
  my_hash["response"].each do |result|
    file = URI.open("#{result["player"]["photo"]}")
    # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
    player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
    player.photo.attach(io: file, filename: "image#{i}.png")
    # puts result
  end
end


puts "Creating primeira liga players.."
36.times do |i|
  puts '...'
  primeiraliga_url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=#{i}")

  # url = URI("https://api-football-v1.p.rapidapi.com/v3/players?league=39&season=2021&page=1")

  http = Net::HTTP.new(primeiraliga_url.host, primeiraliga_url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(primeiraliga_url)
  request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'
  request["X-RapidAPI-Key"] = api_key

  response = http.request(request)



  my_hash = JSON.parse(response.read_body)
  my_hash["response"].each do |result|
    file = URI.open("#{result["player"]["photo"]}")
    # puts "#{result["player"]["firstname"]} #{result["player"]["lastname"]}"
    player = Player.create!(name: "#{result["player"]["firstname"]} #{result["player"]["lastname"]}")
    player.photo.attach(io: file, filename: "image#{i}.png")
    # puts result
  end
end

puts "Created #{Player.count} players"


# # pl id 39, 40 pages
# # la liga id 140, 41 pages
# # serie a id 135, 46 pages
# # bundesliga id 78, 35 pages
# # ligue 1 id 61, 41 pages
# # primeira liga id 94, 36 pages


# # place.photos.attach(io: file, filename: 'place.jpeg')
