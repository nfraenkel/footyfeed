class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.boolean :active

      t.timestamps
    end
  end
end
