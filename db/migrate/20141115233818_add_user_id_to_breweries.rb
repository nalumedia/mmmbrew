class AddUserIdToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :user_id, :integer
    add_index :breweries, :user_id
  end
end
