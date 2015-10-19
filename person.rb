class Person

  attr_accessor :name, :address, :rooms, :occupants, :balance, :status, :vip

  def initialize(options={})
    @name = options[:name]
    @address = options[:address]
    @rooms = options[:rooms]
    @occupants = options[:occupants]
    @balance = {}
    @status = {}
    @vip = {}
  end


end

