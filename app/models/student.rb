class Student < ActiveRecord::Base
  validates :firstName, :presence => true
  validates :lastName, :presence => true
  validates :grade, :numericality => {:greater_than => 0}
  
  has_many :detentions, :dependent => :destroy
  
  def full_name
    [firstName, lastName].join(' ')
  end
  
  def to_s
    full_name
  end
  
  def detention_count
    Detention.where(:student_id => id).length
  end
end
