class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.belongs_to :year, index: true

      t.timestamps
    end
  end
end
