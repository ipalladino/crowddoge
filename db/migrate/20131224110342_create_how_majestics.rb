class CreateHowMajestics < ActiveRecord::Migration
  def change
    create_table :how_majestics do |t|
      t.string :message
      t.integer :posx
      t.integer :posy

      t.timestamps
    end
  end
end
