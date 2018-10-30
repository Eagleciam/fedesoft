module Api
    module V1
        class PostsController < ApplicationController

            def index
                @posts = Post.order('created_at DESC') 
                render json: @posts
            end

            def destroy
            end

            def create
            end

            def update
            end

            def show
            end

        end
    end
end