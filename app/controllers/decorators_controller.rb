class DecoratorsController < ApplicationController
  def index
    @decorators = Decorator.all
  end
  def show
    @decorator = Decorator.find(params[:id])
  end
  def new 
  end
  
end
