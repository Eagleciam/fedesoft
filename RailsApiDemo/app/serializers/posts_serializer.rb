class PostsSerializer < ActiveModel::Serializer
    attribute :id, :title, :body
end