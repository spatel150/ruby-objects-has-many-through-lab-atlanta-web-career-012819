require 'pry'

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    #binding.pry
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select {|app| app.doctor == self }
  end

  def patients
    Appointment.all.select {|app| app.doctor == self}.map {|app| app.patient}
  end

end

# done.
