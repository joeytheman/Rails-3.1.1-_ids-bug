class TeachersClassroom < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :classroom
end
