class PagesController < ApplicationController
  def home
  	@works = Work.all.limit(4)
  end
end