class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    save
  end

  def save
    @@all << self
  end
end