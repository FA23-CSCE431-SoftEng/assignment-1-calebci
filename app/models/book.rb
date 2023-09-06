class Book < ApplicationRecord
    validates :title, presence: true
    # other code
  end