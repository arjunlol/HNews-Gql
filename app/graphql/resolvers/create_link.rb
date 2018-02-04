class Resolvers::CreateLink < GraphQL::Function
  #arguments passed as args
  argument :description, !types.String
  argument :url, !types.String

  #return type from mutation
  type Types::LinkType

  #mutation method
  #_obj - is parent object (in this case nil)
  #args - arguments passed
  #_ctx - the graphql context
  def call(_obj, args, _ctx)
    Link.create!(
      description: args[:description],
      url: args[:url],
      user: _ctx[:current_user]
    )
  end
end
