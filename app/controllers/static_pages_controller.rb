class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:contact]

  def home
  end

  def help
  end

  def about
  end

  def contact
    #現在のURLを記憶
    before_location contact_path
  end

  def carshare
    @feed_items = Car.all.paginate(page: params[:page], per_page: 8)
    #現在のURLを記憶
    before_location carshare_path
  end
  
end
