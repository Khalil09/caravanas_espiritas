class AddMdDescriptionToPackages < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :md_description, :text
  end
end
