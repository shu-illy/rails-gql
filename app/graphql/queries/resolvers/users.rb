module Queries
  module Resolvers
    class Users < GraphQL::Schema::Resolver
      type [Types::UserType], null: false
      description "Userの一覧取得"

      def resolve
        # ::Userとしているのは、Queries::Resolvers::Userとして呼ばれるのを防ぐ為
        ::User.all
      end
    end
  end
end