# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :load_post, only: :show
  impressionist actions: [:show], unique: [:impressionable_type, :impressionable_id, :session_hash]

  def index
    @posts = Post.where(active: true)
    @q = Post.where(active: true).ransack(params[:q])
    @post_results = @q.result(distinct: true).page(params[:page]).per(12)
  end

  def show
    @comments = @post.comments.where(parent_id: nil)
    @comment = @post.comments.build
    @tags = Tag.all.last(5)
    @featured_post_1 = Post.find(featured_posts[0][0])
    @featured_post_2 = Post.find(featured_posts[1][0])
  end

  private

  def load_post
    (@post = Post.find_by_id(params[:id])) || not_found
  end
end
