class CreateStudentsTable < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :osis
      t.text :address
      t.date :date_of_birth
      t.string :guardians_name
      t.binary :phone_number
      t.integer :user_id
      t.timestamps
    end
  end
end