require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTables < ActiveRecord::Migration


  def up
    create_table :students do |t|
      t.string :first_name, :last_name, :gender, :email, :phone
      t.date :birthday
    end
  end

  def up
    create_table :teachers do |t|
      t.string :name, :gender, :email, :phone
    end
  end 
  

  def up
    create_table :students_teachers do |t|
      t.integer :teacher_id, :student_id
    end
  end  

 
end
