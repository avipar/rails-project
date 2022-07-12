class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :author, foreign_key: true
      t.string :title
      t.integer :ispn

      t.timestamps
    end
  end
end
