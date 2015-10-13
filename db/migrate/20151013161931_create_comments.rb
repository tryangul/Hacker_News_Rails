class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :body, :text
      t.column :upvotes, :integer
      t.column :commentable_id, :integer
      t.column :commentable_type, :string
      t.column :user_id, :integer

      t.timestamps null: false
    end
  end
end
