class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :title
end
