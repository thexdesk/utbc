class CreateMatchAssignments < ActiveRecord::Migration
  def change
    create_table :match_assignments do |t|
      t.belongs_to :match
      t.belongs_to :team
      t.integer :points

      t.timestamps
    end
  end
end
