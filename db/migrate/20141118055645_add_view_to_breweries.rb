class AddViewToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :view, :integer
  end
end
