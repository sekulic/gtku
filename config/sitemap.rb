# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.theculturalspoter.eu"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  
     add contact_path, :priority => 0.7, :changefreq => 'weekly'
     add about_path, :priority => 0.7, :changefreq => 'weekly'
  
     Article.find_each do |article|
       add "articles/#{article.url}", :lastmod => article.updated_at
     end
SitemapGenerator::Sitemap.ping_search_engines('http://www.theculturalspoter.eu/sitemap.xml.gz')
end
