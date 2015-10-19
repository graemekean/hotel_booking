class Room

  attr_accessor :number, :type, :price, :occupant, :people, :hotel, :status

  def initialize(options={})
    @number = options[:number]
    @hotel = options[:hotel]
    @status = {}
    @type = options[:type]
    @price = options[:price]
    @occupant = {}
    @people = {}

  end

  def add_person(person)
    @people[person.name] = person
  end

  def remove_person(person)
    person = @people.delete(person)
  end

end






































#   def pretty_string
#     "#{number}  ----   #{type}"

#   end

#   def pretty_books
#     "#{number}"
#   end



# end