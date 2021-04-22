class AddEndDateAndShortDescriptionToEvent < ActiveRecord::Migration[6.1]
  def change 
    add_column :events, :end_date, :datetime
    add_column :events, :short_description, :string
  end
end
