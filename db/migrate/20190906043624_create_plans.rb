class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :destination, null: false
      t.string :title
      t.references :user, null: false,foreign_key: true

      t.timestamps
    end
  end
end
