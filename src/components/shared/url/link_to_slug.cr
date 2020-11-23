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
      a href: "/#{url_shortened.slug}", target: "_blank" do
        text "#{Lucky::RouteHelper.new(:get, "#{url_shortened.slug}").url}"
      end
    end
  end
end
