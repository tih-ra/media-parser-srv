class MediaPull < ApplicationRecord
  validates :name, presence: true
  validates :long_cid, uniqueness: true

  before_create :generate_long_cid

  has_many :media_objects, dependent: :destroy

  private

  def generate_long_cid
    self.long_cid = "#{stringf('%03d', (self.class.maximum(:id).to_i + 1))}_#{SecureRandom.hex(2).upcase}"
  end
end
