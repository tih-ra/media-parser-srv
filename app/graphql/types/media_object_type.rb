Types::MediaObjectType = GraphQL::ObjectType.define do
  name 'MediaObject'

  field :id, !types.ID
  field :title, !types.String
  field :url, !types.String
  field :tags, Types::TagType
end

# field :tags, types.String do
#   resolve(resolves_by_hash_key(:tags))
# end

# def resolves_by_hash_key(key)
#   -> (obj, args, ctx) { obj.tags[0] }
# end
