class MediaObject < ApplicationRecord
  validates :url, url: true
  validates :title, presence: true

  belongs_to :media_pull
  has_many :media_tags, dependent: :destroy

  def parser
    Mechanize.new.get(url).parser
  end

  def tags
    media_tags.map(&:parse).reduce({}, :merge)
  end
end
