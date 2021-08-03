class Image < ApplicationRecord
  # associations
  belongs_to :imageable, polymorphic: true
end
