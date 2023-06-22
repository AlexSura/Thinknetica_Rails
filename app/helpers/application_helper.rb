module ApplicationHelper
  def current_year
    Date.today.year
  end

  def github_url(author, repo)
    link_to 'Thinknetica_Rails', "https://github.com/#{author}/#{repo}"
  end

  def flash_message(key)
    flash.map do |key, msg|
    content_tag :p, msg 
  end
end
end
