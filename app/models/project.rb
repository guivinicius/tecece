class Project < ActiveRecord::Base
  attr_accessible :delivery_year, :description, :keywords, :title, :user_id, :college_id

  belongs_to :college
  belongs_to :user

end
