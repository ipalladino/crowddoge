class AddColorToHowMajestics < ActiveRecord::Migration
  def change
    add_column :how_majestics, :color, :string
  end
end
