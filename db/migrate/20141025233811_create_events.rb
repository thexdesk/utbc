class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :tournament

      t.timestamps
    end
  end
end
