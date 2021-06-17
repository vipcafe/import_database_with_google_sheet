class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.text :address
      t.date :date_of_birth

      t.timestamps
    end
  end
end
