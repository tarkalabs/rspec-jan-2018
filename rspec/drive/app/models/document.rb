class Document < ApplicationRecord
  belongs_to :folder
  has_many :tag_resources
end
