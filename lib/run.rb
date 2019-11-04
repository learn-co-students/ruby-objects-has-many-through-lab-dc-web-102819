require_relative './doctor.rb'
require_relative './patient.rb'
require_relative './appointment.rb'

adele = Artist.new("Adele")
hello = Song.new("Hello", adele, "pop")

puts adele.name
puts hello