class Home::Show < BrowserAction
  include Auth::AllowGuests

  get "/:slug" do
    full_url = UrlQuery.new.find_by_slug(slug).first.full_url

    redirect to: "#{full_url}", status: 301
  end
end
