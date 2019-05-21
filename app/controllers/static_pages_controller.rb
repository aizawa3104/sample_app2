class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def carshare
    @feed_items = Car.all.paginate(page: params[:page], per_page: 8)
    #現在のURLを記憶
    before_location carshare_path
  end
  
end
