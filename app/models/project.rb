class Project < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 140}
end
