class Project < ActiveRecord::Base
  belongs_to :college
  attr_accessible :delivery_year, :description, :keywords, :title
end
