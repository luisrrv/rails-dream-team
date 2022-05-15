class CreateSignings < ActiveRecord::Migration[6.1]
  def change
    create_table :signings do |t|
      t.references :team, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
