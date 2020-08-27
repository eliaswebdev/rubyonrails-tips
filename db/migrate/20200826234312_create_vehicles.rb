class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :plate
      t.string :color
      t.string :engine
      t.string :doors
      t.integer :gearbox, default: 0
      t.integer :starter_system, default: 0

      t.timestamps
    end
  end
end
