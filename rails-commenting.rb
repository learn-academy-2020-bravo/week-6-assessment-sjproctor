# ASSESSMENT 6: Rails Commenting Challenge
# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# app/controller/blog_posts_controller.rb

# 1) blog post controller is defined and inheriting from application contoller
class BlogPostsController < ApplicationController
  def index
    # 2) instance variable that accesses all the instance of the model blog post
    @posts = BlogPost.all
  end

  def show
    # 3) specific post by id, with /params
    @post = BlogPost.find(params[:id])
  end

  # 4) rendering a page with a form
  def new
  end

  def create
    # 5) creating a instance variable that will create a new blog post that will check for the params being satisfied, will redirect if valid
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.delete
      redirect_to blog_posts_path
    else
      # 6) if the destroy method fails, route to the post
      redirect_to blog_post_path(@post)
    end
  end

  # 7) no method below this line can be called outside of the class
  private
  def blog_post_params
    # 8) setting up strong params, help with security and only get the infomation we want in the database
    params.require(:blog_post).permit(:title, :content)
  end

end


# app/models/blog_post.rb

# 9) blog post model class being defined and inheriting from application record (Active Record)
class BlogPost < ApplicationRecord
  # 10) creating relationship between blog post and comments, blog post has many comments, comments belongs_to blog post
  has_many :comments
end
