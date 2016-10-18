class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_player! # make Devise authenticate all pages in the app
end
