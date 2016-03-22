class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  require 'open-uri'
  require 'nokogiri'

  def home
    @gists = Gist.where(:is_public => true)
  end

  # def gist_search
  #   @search = params[:search_query]
  #   @html_file = open("https://gist.github.com/search?q=#{@search}")
  #   @html_doc = Nokogiri::HTML(@html_file)
  #   # View
  #   @html_doc.search('.byline').each do |element|
  #     result = element.text.split(/\s+/).delete_if {|x| x == "" || x == "/" }
  #     gist_infos = {
  #       gist_user: result[0],
  #       gist_name: result[1],
  #       gist_created_at: result.join(2..-2),
  #       gist_description: result[-1],
  #     }
  # end

end


end
