class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.column :first_name, :string
      t.column :last_name,   :string
      t.timestamps
    end
  end
end
