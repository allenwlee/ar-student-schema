require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTables < ActiveRecord::Migration

  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
    end
  end 

  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
    end
  end  

  def change
    create_table :students_teachers do |t|
      t.integer :teacher_id
      t.integer :student_id
    end
  end  

end
