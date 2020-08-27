class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :assumed_name
      t.string :corporate_name

      t.timestamps
    end
  end
end
