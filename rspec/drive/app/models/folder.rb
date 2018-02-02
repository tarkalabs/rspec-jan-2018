class Folder < ApplicationRecord
  belongs_to :user

  before_save :format_name

  validates_presence_of :name, :user_id

  def make_copy
    kopy = self.dup
    kopy.save
    documents.each do |document|
      document.make_copy(self)
    end
  end

  private

    def format_name
      self.name = self.name.parameterize
    end
end
