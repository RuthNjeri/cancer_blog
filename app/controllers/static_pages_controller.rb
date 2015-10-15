class StaticPagesController < ApplicationController



  def home
@microposts=Micropost.all
  end

  def about
  end

  def contact
  end
end
