class CreateIncidentsTable < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.text :comment
      t.integer :student_id
      t.integer :infraction_id
      t.timestamps
    end
  end
end