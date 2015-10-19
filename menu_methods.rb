def menu
  puts 'clear'
  puts "*** Week 2 - Weekend Assignment ***"

  puts   "Welcome to the Graeme Kean chain of Hotels"
  puts
  puts "1. Add a Hotel"
  puts "2. Remove a Hotel"
  puts "3. Add a Room to a Hotel"
  puts "4. Remove a Room from a Hotel"
  puts "5. Add a person to a Hotel"
  puts "6. Remove a person from a Hotel"
  puts "7. Add a person into a room"
  puts "8. Remove a person from a room"
  puts "9. Check-in Procedure"
  puts "10. Vacate Room Procedure"
  puts "11. Business Reports"
  puts "12. VIP Section"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i
end

def select_hotel(chain)

  puts "Please select hotel by number"
  chain.hotels.each {|key, index|
    puts "#{key} -- #{index.name}"
  }
  gets.chomp.to_i
end


def list_all_hotels(chain)
  puts chain.hotels.name

end


def list_all_people
  puts hotels.people
end


