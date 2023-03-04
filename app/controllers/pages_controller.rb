class PagesController < ApplicationController
  def home
    @post = Post.first if Post.any?
  end

  def upvote
    @post = Post.find(params[:id])
    @post.increment!(:upvote)
    # @post.update(upvote: @post.upvote + 1)
    redirect_to root_path
  end

  def downvote
    @post = Post.find(params[:id])
    @post.decrement!(:upvote)
    # @post.update(upvote: @post.upvote + 1)
    redirect_to root_path
  end
end
