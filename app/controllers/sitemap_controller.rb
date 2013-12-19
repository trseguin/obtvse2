class SitemapController < ApplicationController
  def index
    @static_pages = [root_url]
    # Desplay all the posts in reverse chronological order
    @posts = Post.all.sort.reverse
    respond_to do |format|
      format.xml
    end
  end
end
