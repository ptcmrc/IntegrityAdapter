class CreateJustifications < ActiveRecord::Migration
  def change
    create_table :justifications do |t|
      t.integer :justId
      t.string :repo
      t.string :branch
      t.boolean :approved

      t.timestamps
    end
  end
end
