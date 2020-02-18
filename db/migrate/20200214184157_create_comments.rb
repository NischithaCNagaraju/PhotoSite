class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.column :photo_id,  :string
      t.column :user_id,   :string
      t.column :date_time, :text
      t.column :comment,   :string

      t.timestamps
    end
  end
end
