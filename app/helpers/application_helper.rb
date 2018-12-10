module ApplicationHelper
  def twitter_image_url
  url = image_url('index.png')
  url = "https:#{url}" if url =~ /\A\/\/s3/
  url
end
end
