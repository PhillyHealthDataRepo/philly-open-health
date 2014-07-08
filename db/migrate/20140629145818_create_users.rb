class CreateUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
