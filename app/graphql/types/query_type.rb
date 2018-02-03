Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  #queries are represented as fields
  field :allLinks, !types[Types::LinkType] do
    #resolve called to fetch data for that field
    resolve -> (obj, args, ctx) {Link.all}
  end
end
