class Document < ApplicationRecord
  belongs_to :folder
  has_many :tag_resources

  before_save :strip_name

  validates_presence_of :name, :folder_id

  def make_copy(destination_folder=nil)
    kopy = self.dup
    kopy.folder = destination_folder || folder
    kopy.save
  end

  private

    def strip_name
      self.name = self.name.strip
    end

end
