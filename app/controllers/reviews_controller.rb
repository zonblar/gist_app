class ReviewsController < ApplicationController
  before_action :find_gist, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.gist = @gist
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to gist_path(@gist) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to gist_path(@gist) }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
  def find_gist
    @gist = Gist.find(params[:gist_id])
  end
end
