#def new graphql type
Types::LinkType = GraphQL::ObjectType.define do
  name 'Link'

  #the fields it has
  field :id, !types.ID
  field :url, !types.String
  field :description, !types.String
  # -> {} - helps against loading issues between types
  # property - remaps fields to an attribute of Link model
  field :postedBy, -> { Types::UserType }, property: :user

end
