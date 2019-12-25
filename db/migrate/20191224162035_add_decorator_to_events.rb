class AddDecoratorToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :decorator, null: false, foreign_key: true
  end
end
