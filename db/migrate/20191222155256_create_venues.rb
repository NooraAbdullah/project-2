class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :city
      t.string :price
      t.string :capacity
      t.string :phone
      t.string :image

      t.timestamps
    end
  end
end
