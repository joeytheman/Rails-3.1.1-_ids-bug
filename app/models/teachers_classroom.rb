class TeachersClassroom < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :classroom

  validates_presence_of :teacher, :classroom
  validates_associated  :teacher, :classroom
end
