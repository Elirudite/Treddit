class PostsController < ApplicationController

	def new
		@post = Post.new(board_id: params[:board_id])
		#Strictly for button back to boards/:id
		@board = Board.find(params[:board_id])
	end

	def create
		@post = Post.new(post_params)
		@board = Board.find(post_params[:board_id])
		if @post.save
			#some action
			redirect_to @board
		else
			#some action
		end
	end

	private

	def set_post

	end

	def post_params
		#whitelist the parameters
		params.require(:post).permit(:user_id, :board_id, :content, :rating)
	end

end