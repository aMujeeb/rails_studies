class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "My Test Variable"
  end

  def home
    @projects = Project.all
  end

  def error 
  end
end
