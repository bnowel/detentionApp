class Teacher < ActiveRecord::Base
  validates :firstName, :presence => true
  validates :lastName, :presence => true
  
  def full_name
    [firstName, lastName].join(' ')
  end
  
  def to_s
    full_name
  end
end
