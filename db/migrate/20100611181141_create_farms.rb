class CreateFarms < ActiveRecord::Migration
  def self.up
    create_table :farms do |t|
      t.string :name
      t.boolean :organic
      t.float :latitude
      t.float :longitude
      t.float :altitude
      t.integer :farmer_id
      t.integer :organic_certifier_id

      t.timestamps
    end
  end

  def self.down
    drop_table :farms
  end
end
