class AddGdesignAndWdesignAndWdevelNdPublishedToWork < ActiveRecord::Migration
  def change
    add_column :works, :public, :string
    add_column :works, :gdesign, :boolean
    add_column :works, :wdesign, :boolean
    add_column :works, :wdevel, :boolean
    add_column :works, :published, :boolean
  end
end
