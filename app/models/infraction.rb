# == Schema Information
#
# Table name: infractions
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#



class Infraction  < ActiveRecord::Base
  attr_accessible :code, :description

  has_many :incidents
  has_many :students, :through => :incidents

end
