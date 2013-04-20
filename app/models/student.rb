require_relative '../../db/config'

# implement your Student model here



class Student < ActiveRecord::Base

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_numericality_of :age, :greater_than => 4

  validates_format_of :phone, :with => /^\(\d{3}\) \d{3}-\d{4}( x\d{4})?/


  validates :email, :uniqueness => true


  def name
    "#{first_name} #{last_name}"
  end


  def age
    (DateTime.now - birthday).year
  end

end


