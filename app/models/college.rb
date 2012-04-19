class College < ActiveRecord::Base
  attr_accessible :name, :short

  has_many :projects
end
