class ReviewsController < ApplicationController
  before_action :find_review

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.save
    redirect_to @review
  end
end
