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

  def about
    render('about_us')
  end

  def contact
    if params[:country] == 'us' || params[:country] == 'ca'
      @phone_number = "(800) 555-6789"
    elsif params[:country] == 'uk'
      @phone_number = "(020) 7946 1234"
    else
      @phone_number = "+1 (987) 654-3210"
    end

    render(:template => 'demo/contact_us')
  end

end
