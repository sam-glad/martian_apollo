class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :help_request_id, null: false
    end
  end
end
