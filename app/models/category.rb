class Category < ApplicationRecord
  has_many :job_postings, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  def pending_jobs
    self.job_postings.where(status: "pending").count
  end
end
