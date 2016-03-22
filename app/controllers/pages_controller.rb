class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @gists = Gist.where(:is_public => true)
  end
end
