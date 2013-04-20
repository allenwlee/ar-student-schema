require_relative '../../db/config'


class Student < ActiveRecord::Base

  has_many :teachers, :through => :students_teachers

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_numericality_of :age, :greater_than => 4

  validates_format_of :phone, :with => /\d{3}-\d{3}-\d{4}/

  validates :email, :uniqueness => true


  def name
    "#{first_name} #{last_name}"
  end


  def age
    DateTime.now.year - birthday.year - 1
  end

end


  # validates_format_of :phone, :with => /^\(\d{3}\).?\d{3}-\d{4}/
