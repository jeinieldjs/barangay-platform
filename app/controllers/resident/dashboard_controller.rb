class Resident::DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post, only: [:edit, :update, :destroy]
  
    def index
      @posts = Post.all
      @post = Post.new
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = current_user.posts.build(post_params)
  
      if @post.save
        redirect_to resident_dashboard_path, notice: 'Post created successfully.'
      else
        render :new
      end
    end
  
    def edit
      # Logic to display edit form for a specific post
    end
  
    def update
      if @post.update(post_params)
        redirect_to resident_dashboard_path, notice: 'Post updated successfully.'
      else
        render :edit
      end
    end
  
    def destroy
      @post.destroy
      redirect_to resident_dashboard_path, notice: 'Post deleted successfully.'
    end
  
    private
  
    def set_post
      @post = current_user.posts.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end
  