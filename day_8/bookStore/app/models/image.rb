class Image < ApplicationRecord
  belongs_to :Imageable, polymorphic: true
end
