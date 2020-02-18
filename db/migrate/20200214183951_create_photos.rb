class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.column :user_id,    :string
      t.column :date_time,  :text
      t.column :file_name,  :string
      t.timestamps
    end
  end
end
