class AddPositionToSignings < ActiveRecord::Migration[6.1]
  def change
    add_column :signings, :position, :string
  end
end
