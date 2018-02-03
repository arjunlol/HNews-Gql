#def new graphql type
Types::LinkType = GraphQL::ObjectType.define do
  name 'Link'

  #the fields it has
  field :id, !types.ID
  field :url, !types.String
  field :description, !types.String
end
