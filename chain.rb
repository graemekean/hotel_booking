class Chain

  attr_accessor :name, :hotels, :address, :staff, :people, :rooms

  def initialize (options={})
    @name = options[:name]
    @address = options[:address]
    @hotels = {}
    @people = {}
    @staff = {}
    @rooms = {}
  end

  def add_hotel(hotel)
    @hotels[hotel.index] = hotel
  end

  def delete_hotel
    chain.hotels.delete[hotel]
  end

  def populate_hotel(index, hotel, number_of_rooms)
    i = 1
    until i == number_of_rooms do
      room_types = ["Double", "Single"]
      type = room_types.sample.to_s
      case type
      when "Double"
        hotels[index].add_room(Room.new(name: hotel, number: i, type: type, price: 300.0))
      when "Single"
        hotels[index].add_room(Room.new(name: hotel, number: i, type: type, price: 180.0))
      end
      i += 1
    end
  end


end














