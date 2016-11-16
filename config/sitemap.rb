# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.hoopblurbs.com"
SitemapGenerator::Sitemap.public_path = 'tmp/sitemaps/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new
SitemapGenerator::Sitemap.sitemaps_host = "http://s3.amazonaws.com/#{ENV['FOG_DIRECTORY']}/"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.create do
  add '/posts'
  Post.find_each do |post|
    add post_path(post.slug), lastmod: post.updated_at
  end

  add '/projects'
  Project.find_each do |project|
    add project_path(project.slug), lastmod: project.updated_at
  end


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
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
