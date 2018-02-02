class Document < ApplicationRecord
  belongs_to :folder

  def make_copy
    kopy = self.dup
    kopy.save
  end

end
