class Patient
  @@all = []
  attr_accessor :name, :appointments, :doctors
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

end
