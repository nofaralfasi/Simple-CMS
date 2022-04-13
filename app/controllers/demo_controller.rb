class DemoController < ApplicationController

  layout false

  def index
    #  render('index') # this is done by default
  end

  def hello
    #  render('hello') # this is done by default
    # redirect_to(:controller => 'demo', :action => 'index') # gets from the routes with url to generate

    @id = params['id']
    @page = params[:page]
  end
end
