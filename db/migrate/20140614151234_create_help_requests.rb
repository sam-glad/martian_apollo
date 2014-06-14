class CreateHelpRequests < ActiveRecord::Migration
  def change
    create_table :help_requests do |t|
      t.string :subject, null: false
      t.text :description, null: false
      t.string :searched
      t.text :problem
      t.string :state
      t.string :assigned_to
      t.integer :user_id

      t.timestamps
    end
  end
end
