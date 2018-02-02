class Document < ApplicationRecord
  belongs_to :folder
<<<<<<< HEAD
  has_many :shares
||||||| merged common ancestors
=======

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

>>>>>>> 343b97082cb7a00963d5837cb71a766ca1cc4604
end
