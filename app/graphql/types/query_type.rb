Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  #queries are represented as fields
  field :allLinks, function: Resolvers::LinksSearch
end
