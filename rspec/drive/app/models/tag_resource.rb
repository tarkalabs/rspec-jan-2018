class TagResource < ApplicationRecord
	belongs_to :tag
	belongs_to :document
end
