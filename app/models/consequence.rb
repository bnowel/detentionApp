class Consequence < ActiveRecord::Base
  validates :detention_count, :numericality => {:greater_than => 0}
  
end
