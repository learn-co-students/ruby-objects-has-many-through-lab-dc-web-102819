class Doctor

    @@all = []
    attr_reader :name, :appointments
    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    def appointments
      all_appointments =  Appointment.all.select do |appointment|
            appointment.doctor == self
            
        end 
    end


    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end
end 
