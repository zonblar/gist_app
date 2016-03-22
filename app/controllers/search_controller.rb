class SearchController < ApplicationController
  def index
    @q = params['gist'] && params['gist']['q']
    return if @q.blank?

    @hits = Gist.search(@q, { hitsPerPage: 5, page: (params['page'] || 1) })
  end
end
