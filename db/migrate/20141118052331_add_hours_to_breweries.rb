class AddHoursToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :brewery_hours, :text
    add_column :breweries, :brewery_food, :boolean
    add_column :breweries, :brewery_menulink, :string
    add_column :breweries, :brewery_yelplink, :string
    add_column :breweries, :brewery_fblink, :string
    add_column :breweries, :brewery_instalink, :string
  end
end
