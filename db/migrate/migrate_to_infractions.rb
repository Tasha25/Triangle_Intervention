class CreateInfractionsTable < ActiveRecord::Migration
    def change
      create_table :infractions do |t|
      t.string :code
      t.text :description
      t.timestamps
    end
  end
end
