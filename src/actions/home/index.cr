class Home::Index < BrowserAction
  include Auth::AllowGuests

  get "/" do
    html Home::WelcomePage, op: SaveUrl.new
  end
end
