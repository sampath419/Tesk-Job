class Location < ApplicationRecord
  has_many :job_postings, dependent: :destroy
  before_save :relevant_region
  validates :name, presence: true
  validates :street_address_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  NORTH_EAST = ["Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont", "New Jersey", "New York", "Pennsylvania"]
  MID_WEST = ["Illinois", "Indiana", "Michigan", "Ohio", "Wisconsin", "Iowa", "Kansas", "Minnesota", "Missouri", "Nebraska", "North Dakota", "South Dakota"]
  SOUTH = ["Delaware", "Florida", "Georgia", "Maryland", "North Carolina", "South Carolina", "Virginia", "District of Columbia", "West Virginia", "Alabama", "Kentucky", "Mississippi", "Tennessee", "Arkansas", "Louisiana", "Oklahoma", "Texas"]
  WEST = ["Arizona", "Colorado", "Idaho", "Montana", "Nevada", "New Mexico", "Utah", "Wyoming", "Alaska", "California", "Hawaii", "Oregon", "Washington"]


  def relevant_region
      if NORTH_EAST.include? self.state
        self.region = "Northeast"
      elsif MID_WEST.include? self.state
        self.region = "Midwes"
      elsif SOUTH.include? self.state
        self.region = "South"
      elsif WEST.include? self.state
        self.region = "West"
      else
        self.region = ""
      end
  end
end
