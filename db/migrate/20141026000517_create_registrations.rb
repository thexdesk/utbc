class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :team
      t.belongs_to :event
      t.datetime :registration_date
      t.boolean :attended, default: false
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
