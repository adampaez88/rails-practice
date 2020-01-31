class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.integer :lifespan
      t.string :size
      t.references :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end

