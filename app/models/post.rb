class Post < ActiveRecord::Base
  attr_accessible :body, :publish_date, :title
end
