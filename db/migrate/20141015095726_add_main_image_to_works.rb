class AddMainImageToWorks < ActiveRecord::Migration
  def change
    add_column :works, :main_image, :string
  end
end
