class Notice < ActiveRecord::Base
  validates :subject, :presence => true
  validates :body, :presence => true
  has_and_belongs_to_many :consequences
  
  attr_accessor :consequence_list
  
end
