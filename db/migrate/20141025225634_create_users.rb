class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :student_number
      t.text :gender

      t.timestamps
    end
  end
end
