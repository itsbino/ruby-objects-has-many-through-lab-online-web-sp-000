class Doctor
  attr_accessor :name
  attr_reader :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self )
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
