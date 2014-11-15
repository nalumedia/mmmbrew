class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :brewery_name
      t.string :brewery_description
      t.string :brewery_street
      t.string :brewery_city
      t.string :brewery_state
      t.string :brewery_zip
      t.string :brewery_phone
      t.string :brewery_www
      t.text :brewery_shortdescription

      t.timestamps
    end
  end
end
