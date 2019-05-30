class Patient
  @@all = []
  attr_accessor
  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
  end

  def self.all
    @@all
  end
