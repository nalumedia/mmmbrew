class CreateBrewlinks < ActiveRecord::Migration
  def change
    create_table :brewlinks do |t|
      t.string :brewlink_name
      t.text :brewlink_description
      t.string :brewlink_url

      t.timestamps
    end
  end
end
