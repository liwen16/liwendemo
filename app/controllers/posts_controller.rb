class PostsController < ApplicationController
    def index
      @post  =  Post.all
      @category = Category.all
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
      @post = Post.new
    end

    def edit
      @post = Post.find(params[:id])
    end

    def create
      @post = Post.new(post_params)
      @post.save
      redirect_to @post
    end

    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to @post
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
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.require(:post).permit(:name)
      end
  end
