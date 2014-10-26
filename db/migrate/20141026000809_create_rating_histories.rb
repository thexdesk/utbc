class CreateRatingHistories < ActiveRecord::Migration
  def change
    create_table :rating_histories do |t|
      t.belongs_to :rating

      t.timestamps
    end
  end
end
