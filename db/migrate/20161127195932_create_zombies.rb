class CreateZombies < ActiveRecord::Migration[5.0]
  def change
    create_table :zombies do |t|
      t.string :name
      t.string :type
      t.string :weakness
      t.string :region
      t.string :speed

      t.timestamps
    end
  end
end
