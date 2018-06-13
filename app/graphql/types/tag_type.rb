class Types::TagType < GraphQL::Schema::Scalar
  def self.coerce_result(ruby_value, _context)
    ruby_value
  end
end
