class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :admin
      
      t.timestamps
    end
  end
end
