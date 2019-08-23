module ApplicationHelper
  # ページごとの完全なタイトルを返す
  # @param page_title [String] ページ固有タイトル(省略可)
  # @return [String] 完全なタイトル
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end
end
