class CreateTripplans < ActiveRecord::Migration
  def change
    create_table :tripplans do |t|
      t.integer :user_id
      t.string :tripname
      t.binary :imagebinary
      t.string :imagelink

      t.timestamps null: false
    end
  end
end
