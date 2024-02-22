# frozen_string_literal: true

class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :state
      t.string :us_city
      t.integer :population
      t.integer :one_hundred_pct_by
      t.integer :co2_emissions_perannum
      t.integer :wind
      t.integer :solar
      t.integer :other_energy_source
      t.text :image_data

      t.timestamps
    end
  end
end
