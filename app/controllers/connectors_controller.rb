class ConnectorsController < ApplicationController
  def index
    @connectors = Connector.all
  end


  def show
    @incident = Incident.find(params[:incident_id])
    @connector = Connector.new
  end

end