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
REVISAR
            def create
                if @user=User.find_by("name": "Maria")
                    @user.posts.new(posts_params)
                @post= Post.new(post_params)
                if @post.save
                    render status: :created
                else 
                    render json: @post.errors, 
                    status: :unprocessable_entity
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

            private 
              def post_params
                params.require(:user).permit(:title, :body, )
              end  
        end
    end
end