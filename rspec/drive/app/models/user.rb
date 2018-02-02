class User < ApplicationRecord
  FREE_PLAN_CAPACITY = 5000.freeze

  validates_presence_of :name, :email
  validates_uniqueness_of :email

  def drive_size
    folders.sum(:size)
  end

  def documents_count
    Document.joins(folder: :user).where('folders.user_id = ?', id).count
  end

  def exceeded_capacity?
    drive_size > max_capacity
  end

  def exceeded_documents_count?
    documents_count > max_documents
  end
end
