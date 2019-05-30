class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @patient.appointments << self
    @patient.doctors << doctor

    @doctor = doctor
    @doctor.appointments << self
    @doctor.patients << patient
    
    @@all << self
  end

  def self.all
    @@all
  end

end
