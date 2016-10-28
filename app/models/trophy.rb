class Trophy < ActiveRecord::Base
  belongs_to :student
  
  validates_presence_of :points
  validates_numericality_of :points, greater_than: 0
end
