class CreateEventListings < ActiveRecord::Migration[6.1]
  def change
    create_table :event_listings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :event, null: false, foreign_key: true
      t.boolean :saved
      t.boolean :seen
      t.boolean :booked

      t.timestamps
    end
  end
end
