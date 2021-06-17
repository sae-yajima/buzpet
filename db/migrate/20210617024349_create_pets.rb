class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string  :title
      t.text    :catch_copy
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
