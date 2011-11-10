class Teacher < ActiveRecord::Base
  has_many :teachers_classrooms
  has_many :classrooms, through: :teachers_classrooms

  validates_presence_of :name

  def self.setup_data
    Teacher.create(name: 'Teacher1')
    Teacher.new.save(validate: false)

    Classroom.create(name: 'Classroom1')

  end

  def self.add_invalid_teacher_to_classroom
    c = Classroom.first
    t = Teacher.last
    puts "Is teacher valid? #{t.valid?}"
    c.teacher_ids = t.id
  end
end
