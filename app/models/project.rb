class Project < ActiveRecord::Base
  attr_accessible :delivery_year, :description, :tag_list, :title, :user_id, :college_id

  validates :title, :description, :college_id, :delivery_year, :presence => true

  acts_as_taggable

  belongs_to :college
  belongs_to :user

end
