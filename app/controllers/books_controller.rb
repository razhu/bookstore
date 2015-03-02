class BooksController < ApplicationController
  def index
    @var = params[:testd]
  end

  def show
    @id = params[:id]
    @var = params[:test]
  end
  def create
    redirect_to :action => :index
  end
end
