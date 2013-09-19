class LinesController < ApplicationController
  def new
  end
  def create
    render text: params[:line].inspect
  end

end
