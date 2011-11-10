class CreateTeachersClassrooms < ActiveRecord::Migration
  def change
    create_table :teachers_classrooms do |t|
      t.references :teacher
      t.references :classroom

      t.timestamps
    end
    add_index :teachers_classrooms, :teacher_id
    add_index :teachers_classrooms, :classroom_id
  end
end
