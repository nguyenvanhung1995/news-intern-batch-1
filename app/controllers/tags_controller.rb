# frozen_string_literal: true

class TagsController < ApplicationController
  def show
    @posts = Post.tagged_with(params[:id])
  end
end