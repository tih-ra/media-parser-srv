Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allMediaObjects, !types[Types::MediaObjectType] do
    # resolve would be called in order to fetch data for that field
    resolve ->(_obj, _args, _ctx) { MediaObject.all }
  end
end
