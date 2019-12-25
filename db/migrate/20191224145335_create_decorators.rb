class CreateDecorators < ActiveRecord::Migration[6.0]
  def change
    create_table :decorators do |t|
      t.string :name
      t.string :city
      t.string :price
      t.string :phone
      t.string :image

      t.timestamps
    end
  end
end
