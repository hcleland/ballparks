class Rating < ApplicationRecord
  belongs_to :ballpark
  belongs_to :user
end
