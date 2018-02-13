class ReviewsController < ApplicationController
  def new
    # we need @formation in our `simple_form_for`
    @formation = Formation.find(params[:formation_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `formation_id` to asssociate review with corresponding formation
    @review.formation = formation.find(params[:formation_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end