# == Schema Information
#
# Table name: connectors
#
#  id                        :integer          not null, primary key
#  organization_name         :string(255)
#  organization_mission      :text
#  street_address            :text
#  city                      :string(255)
#  state                     :string(255)
#  zip_code                  :integer
#  contact_person_first_name :string(255)
#  contact_person_last_name  :string(255)
#  contact_person_email      :binary
#  contact_number            :binary
#  organization_number       :binary
#  organization_website      :binary
#  incident_id               :integer
#

class Connector < ActiveRecord::Base
  attr_accessible :organization_name,
  :organization_mission,
  :street_address,
  :city,
  :state,
  :zip_code,
  :contact_person_first_name,
  :contact_person_last_name,
  :contact_person_email,
  :contact_number,
  :organization_number,
  :organization_website

belongs_to :incident


end

