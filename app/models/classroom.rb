class Classroom < ActiveRecord::Base
  has_many :teachers_classrooms
  has_many :teachers, through: :teachers_classrooms

  validates_presence_of :name

end
