class AddHeadImageToWorks < ActiveRecord::Migration
  def change
    add_column :works, :head_image, :string
  end
end
