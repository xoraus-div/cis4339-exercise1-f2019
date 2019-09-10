class CreateSuperHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :super_heros do |t|
      t.string :real_name
      t.string :hero_name

      t.timestamps
    end
  end
end
