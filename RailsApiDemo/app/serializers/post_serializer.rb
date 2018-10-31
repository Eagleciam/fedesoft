class PostSerializer < ActiveModel::Serializer
    attribute :id, :title, :body
end