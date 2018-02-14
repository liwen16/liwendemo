class HomeController < ApplicationController
  def index
      @list_contacts = Email.all
  end
end
