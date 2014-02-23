class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :password

      t.timestamps
    end
  end
end
