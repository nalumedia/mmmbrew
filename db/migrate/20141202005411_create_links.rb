class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link_name
      t.string :link_url
      t.text :link_description

      t.timestamps
    end
  end
end
