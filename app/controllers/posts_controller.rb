class PostsController < ApplicationController
    def index
      @posts  =  Post.all
    end

    def show
      @post = Post.find(params[:id])
      @category =  Category.all

    end

    def new
      @post = Post.new
      @category = Category.all
    end

    def edit
      @post = Post.find(params[:id])
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path, :notice => "Your post has been saved"
      else
        render "new"
      end
    end

    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to @post , :notice => "Your phost has been updated"
      else
        render 'edit'
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path(post)
    end

    private
      def post_params
        params.require(:post).permit(:title, :body, :category_id)
      end
  end
