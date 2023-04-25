class DemoController < ApplicationController

  layout false

  def index
    # render('demo/index')
  end

  def about
    render('about_us')
  end

  def contact
    @locale = params[:locale]
    if ['us', 'ca'].include?(@locale)
      @contact_number = '(303) 722-0630'
    elsif @locale == 'uk'
      @contact_number = '(020) 654-8455'
    else
      @contact_number = '+1 (987) 722-0630'
    end
    render('contact_us')
  end

  def hello
    # render('hello')
    # redirect_to(action: 'index')
    @array = [1, 2, 3, 4, 5]
    @id = params[:id]
    @page = params[:page]
  end

end
