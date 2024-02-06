# app/controllers/resident/posts_controller.rb
class Resident::PostsController < ApplicationController
    before_action :authenticate_user!
  
    def new
      @post = Post.new
    end
  
    def create
      @post = current_user.posts.build(post_params)
  
      if @post.save
        redirect_to resident_dashboard_index_path, notice: 'Post created successfully.'
      else
        render :new
      end
    end
  
    private
  
    def post_params
      params.require(:post).permit(:title, :content, :anonymous)
    end
  end
  