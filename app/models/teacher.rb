require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  
  has_many :students, :through => :students_teachers

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_format_of :phone, :with => /^\(\d{3}\) \d{3}-\d{4}( x\d{4})?/

  validates :email, :uniqueness => true

end


