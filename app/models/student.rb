# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  osis           :integer
#  address        :text
#  date_of_birth  :date
#  guardians_name :string(255)
#  phone_number   :binary
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Student <ActiveRecord::Base
  attr_accessible :first_name, :last_name, :osis, :address, :date_of_birth, :guardians_name, :user_id, :phone_number

  belongs_to :user #I can get the user for this particular student and I will get back the user object
#This gives you the .user method for the student
has_many :incidents
#This gives you the .incidents method for the student
  has_many :infractions, :through => :incidents


end
