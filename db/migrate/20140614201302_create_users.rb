class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :username
      t.string :email
      t.string :avatar_url

      t.timestamps
    end
  end
end
