class CreateConnectorsTable < ActiveRecord::Migration
  def change
    create_table :connectors do |t|
      t.string :organization_name
      t.text  :organization_mission
      t.text :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :contact_person_first_name
      t.string :contact_person_last_name
      t.binary :contact_person_email
      t.binary :contact_number
      t.binary :organization_number
      t.binary :organization_website
      t.timestamps
      end
  end
end
