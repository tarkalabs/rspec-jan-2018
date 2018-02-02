class Share < ApplicationRecord
  belongs_to :resource, foreign_key: :resource_id, class_name: "Document"
  belongs_to :recipent, foreign_key: :recipent_id, class_name: "User"
end
