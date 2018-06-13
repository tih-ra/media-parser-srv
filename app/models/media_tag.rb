class MediaTag < ApplicationRecord
  validates :name, presence: true
  validates :xpath_rule, presence: true

  belongs_to :media_object

  def parsed_content
    apply_regexp(media_object.parser.xpath(xpath_rule).first.combined)
  rescue RegexpError
    'Wrong regexp_rule or replace_rule'
  rescue Nokogiri::XML::XPath::SyntaxError
    'Wrong xpath_rule'
  end

  def parse
    { name.to_sym => parsed_content }
  end

  def apply_regexp(content)
    content&.gsub(Regexp.new(regexp_rule || ''), replace_rule || '')
  end

  Nokogiri::XML::Element.class_eval do
    def combined
      text
    end
  end

  Nokogiri::XML::Attr.class_eval do
    def combined
      value
    end
  end
end
