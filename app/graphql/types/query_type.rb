module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, resolver: Queries::Resolvers::User
    field :users, resolver: Queries::Resolvers::Users
    

    field :novel, Types::NovelType, "Find Novel by ID", null: true do
      argument :id, ID, required: true
    end
    def novel(id:)
      Novel.find(id)
    end

    field :novels, [Types::NovelType], null: false
    def users
      Novels.all
    end
  end
end
