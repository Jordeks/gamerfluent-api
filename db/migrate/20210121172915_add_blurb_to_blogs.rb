class AddBlurbToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :blurb, :text
  end
end
