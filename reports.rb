def list_chain(chain)
  chain.business
end

def business_report(chain)
  binding.pry
  puts chain.hotels.value.name
end

def chain_report(chain)
  puts "We are in the schain report"
  puts "Feature not yet implemented"
end

def staff_report(chain)
  puts "We are in the staff report method"
  puts "Feature not yet implemented"
end

def list_all_bookings(chain)
  puts "We are in the list all bookings method"
  puts "Feature not yet implemented"
end