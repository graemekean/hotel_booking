class Hotel

  attr_accessor :index, :name, :address, :rooms, :staff, :people, :number

  def initialize(options={})
    @index = options[:index]
    @name = options[:name]
    @address = options[:address]
    @number = {}
    @rooms = {}
    @staff = {}
    @people = {}


  end

  def create_room(hotel, number, type, price)
    room = Room.new(number: number, type: type, price: price)
    binding.pry
    @rooms[room.number] = room
  end

  def add_room(room)
    @rooms[room.number] = room
  end

  def remove_room(room)
    room = @rooms.delete(room)
  end

  def add_person(person)
    @people[person.name] = person
  end

  def remove_person(person)
    person = @people.delete(person)

  end

  

  def get_hotels(hotels_string)
    hotels[hotels_string]
  end

  

  def move_person_to_room(name, room)
    puts "Trying to move #{name} to #{room}"
    # add_to_room(name, number)
    binding.pry
    person = @people.delete(name)
    
  end

end


