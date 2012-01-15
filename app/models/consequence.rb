class Consequence < ActiveRecord::Base
  validates :detention_count, :numericality => {:greater_than => 0}
  has_and_belongs_to_many :notices
end
