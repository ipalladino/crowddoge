class AddIpToHowMajestics < ActiveRecord::Migration
  def change
    add_column :how_majestics, :ip, :string
  end
end
