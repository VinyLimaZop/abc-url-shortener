class UrlQuery < Url::BaseQuery
  def find_by_slug(slug)
    slug(slug)
  end
end
