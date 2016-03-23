class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  require 'open-uri'
  require 'nokogiri'

  def home
    @gists = Gist.where(:is_public => true)
  end

end
