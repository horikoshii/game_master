class Information < ApplicationRecord

  belongs_to :title

  enum type_method: { intelligence: 0, new_character: 1, event: 2 }
end
