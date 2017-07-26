class AddWppToPackages < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :wpp, :string
  end
end
