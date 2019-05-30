class Patient
  @@all = []
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor, date)
    puts appointment.inspect
    appointment = Appointment.new(date, self, doctor)

  end

  def self.all
    @@all
  end

end
