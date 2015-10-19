# LOAD GEMS  ----------------------------------------

require 'pry-byebug'

# REQUIRE RELATIVES ------------------------------

require_relative 'chain'
require_relative 'hotel'
require_relative 'room'
require_relative 'person'
require_relative 'methods'
require_relative 'hotel_methods'
require_relative 'reports'
require_relative 'menu_methods'

# CREATE CHAIN OBJECT  --------------------------

chain = Chain.new name: "GK"

# CREATE AND POPULATE HOTELS  ---------------------------

chain.add_hotel(Hotel.new(index: 1, name: 'The Balmoral', address: "1 Princes Street"))
chain.add_hotel(Hotel.new(index: 2, name: 'The Caledonian', address: "The West End"))
chain.add_hotel(Hotel.new(index: 3, name: 'The Glasshouse', address: "Union Street"))
chain.add_hotel(Hotel.new(index: 4, name: 'The Sheraton', address: "Lothian Road"))



chain.populate_hotel(1, "The Balmoral", 3)

chain.populate_hotel(2, "The Caledonian", 3)
chain.populate_hotel(3, "The Glasshouse", 3)
chain.populate_hotel(4, "The Sheraton", 3)




response = menu

while response != 0
  case response
  when 1
    create_hotel(chain)
  when 2
    remove_hotel(chain)
  when 3
    add_room_to_hotel(chain)
  when 4
    remove_room_from_hotel(chain)
  when 5
    add_person_to_hotel(chain)
  when 6
    remove_person_from_hotel(chain)
  when 7
    add_person_to_room(chain)
  when 8
    remove_person_from_room(chain)
  when 9
    check_in(hotel)
  when 10
    vacate_room(hotel)
  when 11
    business_report(chain)
  when 12
    vip_section()
  else
    puts "Invalid option"
  end
  puts "Press Enter to continue"
  gets
  response = menu
end


