class Post < ActiveRecord::Base
  require 'html_truncator'
  validates :title, presence: true, length: {maximum: 140}
  validates :body, presence: true
  self.per_page = 5

end