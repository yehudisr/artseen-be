class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :date
      t.string :description
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
