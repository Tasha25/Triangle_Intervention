class AddIncidentIdToConnectors < ActiveRecord::Migration
  def change
    add_column :connectors, :incident_id, :integer
  end
end
