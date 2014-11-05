class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.belongs_to :event
      t.belongs_to :serving_side
      t.belongs_to :recieving_side

      t.timestamps
    end
  end
end
