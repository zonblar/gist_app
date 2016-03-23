class GistsController < ApplicationController
  before_action :set_gist, only: [:show, :edit, :update, :destroy]

  def index
    search_query = params_retriever["search_params"]
    @gists = Gist.search_for(search_query).where("is_public = true")
  end

  def show
    @user = @gist.user
    @review = Review.new
  end

  def new
    @gist = Gist.new
  end

  def create
    @gist = current_user.gists.build(gist_params)
    # gist_params[:is_public] == "0" ? @gist.is_public = false : @gist.is_public = true
    if @gist.save
      redirect_to gist_path(@gist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @gist.update(params[:gist])
  end

  def destroy
    @gist.destroy
    redirect_to gists_path
  end

  private
  def gist_params
    params.require(:gist).permit(:name, :description, :content, :is_public, :user_id)
  end

  def set_gist
    @gist = Gist.find(params[:id])
  end

  def params_retriever
    params.require(:search)
  end
end
