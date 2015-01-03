class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :state
      t.string :name
      t.string :description
      t.string :email
      t.string :username
      t.string :password_digest
      t.text :roles

      t.timestamps null: false
    end
  end
end
