class OcAndWsCodeMustBeUnique < ActiveRecord::Migration
  def self.up
    add_index :organic_certifiers, :code, :unique => true
    add_index :washing_stations, :code, :unique => true
  end

  def self.down
    remove_index :organic_certifiers, :code
    remove_index :washing_stations, :code
  end
end
