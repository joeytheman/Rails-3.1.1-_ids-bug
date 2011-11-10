class Teacher < ActiveRecord::Base
  has_many :teachers_classrooms
  has_many :classrooms, through: :teachers_classrooms

  validates_presence_of :name

end
