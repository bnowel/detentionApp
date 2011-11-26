class Detention < ActiveRecord::Base
  validates :reason, :presence => true 
  
  belongs_to :student
  belongs_to :teacher
  
  def student_select (id_from_form)
    #logger.info("STUDENT SELECT: #{id_from_form}")
    self.student = Student.find(id_from_form)
  end
  
  def teacher_select(id_from_form)
    self.teacher = Teacher.find(id_from_form)
  end
end
