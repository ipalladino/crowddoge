class AddNameToHowMajestics < ActiveRecord::Migration
  def change
    add_column :how_majestics, :name, :string
    add_column :how_majestics, :size, :integer
  end
end
