class PostsController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate, only: [:create, :update, :destroy, :index]
  before_action :set_post, only: [:show]
  before_action :set_post_token, only: [:update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = @user.posts.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = @user.posts.new(post_params)

    if @post.save
      render :show, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = @user.posts.find(params[:id])
    if @post.update(post_params)
      render :show, status: :ok, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = @user.posts.find(params[:id])
    @post.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_token
      @post = @user.posts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :user_id)
    end

    def authenticate
      authenticate_or_request_with_http_token do |httptoken|
        @user = User.find_by(token: httptoken)
      end

    end
  end
