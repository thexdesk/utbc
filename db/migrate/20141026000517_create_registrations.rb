class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.datetime :registration_date

      t.timestamps
    end
  end
end
