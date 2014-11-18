class AddTastingToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :tasting, :boolean
  end
end
