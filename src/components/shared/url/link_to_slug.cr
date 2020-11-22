class Shared::Url::LinkToSlug < BaseComponent
  needs url_shortened : ::Url

  def render
    show_shortened_url_info(url_shortened)
  end

  private def show_shortened_url_info(url_shortened : ::Url)
    para do
      text "URL shortened successfully!"
    end
    para do
      strong "The url shortened is: "
      a href: "localhost:3001/#{url_shortened.slug}" do
        text "localhost:3001/#{url_shortened.slug}"
      end
    end
  end
end
