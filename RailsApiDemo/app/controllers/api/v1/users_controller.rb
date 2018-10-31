module Api
    module V1
        class UsersController < ApplicationController

            def index
                @users = User.order('created_at DESC') 
                render json: @users
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