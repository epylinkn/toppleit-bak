class Post < ActiveRecord::Base
  attr_accessible :title, :body, :publish_date
end
