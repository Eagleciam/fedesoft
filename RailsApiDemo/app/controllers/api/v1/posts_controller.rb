module Api
    module V1
        class PostsController < ApplicationController

            def index
                @posts = Post.order('created_at DESC') 
                if @posts
                    render json: @posts
                else 
                    render json: @posts.errors, status: :unprocessable_entity
                end
            end

            def destroy
            end

            def create
                
            end

            def update
            end

            def show
                @post = Post.find(params[:id]) 
                if @post
                    render json: @post
                else 
                    render json: @post.errors, status: :unprocessable_entity
                end
                
            end

        end
    end
end