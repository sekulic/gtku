class SitemapsController < ApplicationController
  def show
    # Redirect  S3
    redirect_to "http://sitemap-gtku.s3.amazonaws.com/sitemaps/sitemap.xml.gz"
  end
end
