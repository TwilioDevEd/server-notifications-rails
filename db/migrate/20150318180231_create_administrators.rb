class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :phone_number
      t.timestamps null: false
    end
  end
end
