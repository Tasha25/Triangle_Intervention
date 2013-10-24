# == Schema Information
#
# Table name: incidents
#
#  id            :integer          not null, primary key
#  comment       :text
#  student_id    :integer
#  infraction_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#



class Incident <ActiveRecord::Base
  attr_accessible :comment, :student_id, :infraction_id

  belongs_to :student
  belongs_to :infraction

  has_many :connectors

end
