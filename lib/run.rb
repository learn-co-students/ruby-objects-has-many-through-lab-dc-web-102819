require 'pry'
require_relative 'song.rb'
require_relative 'artist.rb'
require_relative 'genre.rb'
require_relative 'appointment.rb'
require_relative 'doctor.rb'
require_relative 'patient.rb'

# john_lennon = Artist.new("John Lennon")
# ringo_starr = Artist.new("Ringo Starr")
# rock = Genre.new("Rock")
# pop = Genre.new("Pop")
# let_it_be = Song.new("Let It Be", john_lennon, rock)
# hey_jude = Song.new("Hey Jude", john_lennon, rock)
# hello_kitty_dance = Song.new("Kitty Twerk", ringo_starr, pop)
# here_comes_the_sun = john_lennon.new_song("Here comes the Sun", rock)

# john_lennon.songs
# rock.songs
# pop.artists


dr_seuss = Doctor.new("Dr. Seuss")
dr_smirnoff = Doctor.new("Dr. Smirnoff")
jane_doe = Patient.new("Jane Doe")
john_doe = Patient.new("John Doe")
peter_parker = Patient.new("Peter Parker")
app1 = Appointment.new("01/23/1810", jane_doe, dr_seuss)
web_check = Appointment.new("04/23/200004", peter_parker, dr_smirnoff)
app2 = dr_smirnoff.new_appointment(peter_parker, "04/93/200005")
dr_smirnoff.appointments
binding.pry



