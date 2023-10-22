require "http"

puts "Do you want first contact or all contacts?:"
puts "[1] first only"
puts "[2] all"
print "Choose an option: "

answer = gets.chomp.to_i

if answer == 1
  response = HTTP.get("http://localhost:3000/first_contact")
elsif answer == 2
  response = HTTP.get("http://localhost:3000/all_contacts")
end

puts response.parse
