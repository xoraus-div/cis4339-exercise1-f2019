class CreateSuperPowers < ActiveRecord::Migration[6.0]
  def change
    create_table :super_powers do |t|
      t.string :name
      t.string :description
      t.references :super_hero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
