class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.string :venue
      t.string :type_of

      t.timestamps
    end
  end
end
