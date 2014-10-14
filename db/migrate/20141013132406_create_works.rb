class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.integer :index
      t.text :body

      t.timestamps
    end
  end
end
