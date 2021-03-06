class PostsController < ApplicationController
	# rescue_from NoMethodError, with: :invalid_url

	before_action :find_post, only: [:edit, :show, :update, :destroy]

	def home
		@posts = Post.all.order('post_date DESC').limit(3)
	end

	def index
		@posts = Post.all.order('post_date DESC')
	end

	def show
		
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to @post, notice: "New post is created successfully!"
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: "Your post is updated successfully!"
		else
			render edit
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def invalid_url
		logger.error "Attempt to access invalid url" 
		redirect_to root_url, notice: 'Not A Valid URL'
		
	end


	def post_params
		params.require(:post).permit(:title, :content, :post_date)
	end

	def find_post
		@post = Post.friendly.find(params[:id])
	end
end
