

# MENU METHODS -------------------------------
def create_hotel(chain)
  print "Name: "
  name = gets.chomp
  print "Address: "
  address = gets.chomp
  index = chain.hotels.length + 1
  chain.add_hotel(Hotel.new(index: index, name: name, address: address))
end

def remove_hotel(chain)
  response = select_hotel(chain)
  hotel_name = chain.hotels[response].name
  hotel = chain.hotels[response]
  puts "Are you sure you want to delete #{hotel_name} - y to proceed or n to quit to main menu"
  choice = gets.chomp
  case choice
  when "y"
    hotel = chain.hotels.delete(response)
    # chain.hotels[response].delete
    puts "#{hotel_name} deleted"
  when "n"
    menu
  else
    puts "invalid input - hotel not deleted"
    menu
  end  
end

def add_room_to_hotel(chain)
  response = select_hotel(chain)
  hotel = chain.hotels[response]
  rooms = chain.hotels[response].rooms
  puts rooms
  puts "Please select a room number"
  number = gets.chomp.to_i
  puts "Select the Room type?"
  puts "1 - Single"
  puts "2 - Double"
  puts "3 - Studio"
  puts "4 - Penthouse"
  puts "5 - The Cupbaord"
  type_select = gets.chomp.to_i
  case type_select
  when 1
    type = "Single"
    price = 120.0
  when 2
    type = "Double"
    price = 300.0
  when 3
    type = "Studio"
    price = 350.0
  when 4
    type = "Penthouse"
    price = 400.0
  when 5
    type = "The Cupbaord"
    price = 15.0
  else
  end
  hotel.add_room(Room.new(number: number, type: type, price: price))
end

def remove_room_from_hotel(chain)
  response = select_hotel(chain)
  hotel = chain.hotels[response]
  rooms = chain.hotels[response].rooms
  puts "Please select a room number to delete"
  number = gets.chomp.to_i
  hotel.remove_room(number)
end

def add_person_to_hotel(chain)
  puts "Please enter customer mame:"
  print "=> "
  name = gets.chomp
  puts "Please enter customer address:"
  print "=> "
  address = gets.chomp
  puts "How many people will occupy the room?"
  print "=> "
  occupants = gets.chomp
  response = select_hotel(chain)
  hotel = chain.hotels[response]
  status = "In Lobby"
  chain.hotels[response].add_person(Person.new(name: name, address: address, hotels: hotel, occupants: occupants, status: status))
end

def remove_person_from_hotel(chain)
  response = select_hotel(chain)
  hotel = chain.hotels[response]
  people = chain.hotels[response].people
  puts people.keys
  puts "Please select a person (by name) to remove from #{hotel}"
  name = gets.chomp.to_s
  person = hotel.people[name]
  hotel.remove_person(name)
end

def add_person_to_room(chain)
  response = select_hotel(chain)
  hotel = chain.hotels[response]
  puts chain.hotels[response].people
  puts "Please select a person (by name) to add to a room"
  name = gets.chomp.to_s
  person = chain.hotels[response].people[name]
  puts "Please select a vacant room"
  puts chain.hotels[response].rooms
  number = gets.chomp.to_i
  room = chain.hotels[response].rooms[number]

  room.add_person(person)
  
  person.rooms = number
  person.status = "Checked in to Room #{number}"
  person.balance = room.price
  room.occupant = person.occupants
  room.status = "Booked"
end

def remove_person_from_room(chain)
  response = select_hotel(chain)
  hotel = chain.hotels[response]
  puts chain.hotels[response].people
  # TODO - selects all people not those checked in
  puts "Please select a person (by name) to vacate a room"
  name = gets.chomp.to_s
  person = chain.hotels[response].people[name]
  room = chain.hotels[response].rooms[person.rooms]
  binding.pry

  room.remove_person(person)
  

end

def check_in(chain)
  puts "Check In - Feature not yet implemented"
  menu
  
end




def vacate_room(chain)
  puts "Vacate Room - Feature not yet implemented"
  menu
end

def business_report(chain)
  puts "Business Reports - feature not yet implemented"
  menu
end

def vip_section(chain)
  puts "VIP Section - Feature not yet implemented"
  menu
end






# MISC. METHODS  ---------------------------


def random_name
  first = ["Graeme", "Norrie", "Rollie", "Tag", "Duggee", "Roddy", "David", "Andrew", "Sandy", "Rick", "Michael", "Mikey", "Felix", "Oscar"]
  last = ["Peterson", "Kean", "Greig", "Pavlov", "Hicks", "Stanhope", "Brown", "White", "Black", "Sanders", "Connery"]
  name = "#{first.sample} #{last.sample}"

end

