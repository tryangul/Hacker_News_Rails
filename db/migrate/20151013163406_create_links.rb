class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.column :url, :string
      t.column :user_id, :integer
      t.column :upvotes, :integer

      t.timestamps null: false
    end
  end
end
