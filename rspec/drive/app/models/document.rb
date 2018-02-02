class Document < ApplicationRecord
  belongs_to :folder
  has_many :shares
end
