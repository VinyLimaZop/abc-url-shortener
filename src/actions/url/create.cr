class Url::Create < BrowserAction
  include Auth::AllowGuests

  post "/" do
    SaveUrl.create(params) do |operation, url|
      html Home::WelcomePage, op: SaveUrl.new, url_shortened: url
    end
  end
end
