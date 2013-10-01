class LinesController < ApplicationController
  def new
  end
  def create
    @line = Line.new(line_params)

    @line.save
    redirect_to @line
  end

  def show
    @line = Line.find(params[:id])
  end
  def index
    @lines = Line.all

  end

  respond_to :html, :json
  def update
    @line = Line.find(params[:id])
    @line.update_attributes(line_params)
    respond_with @line
  end
  private
    def line_params
      params.require(:line).permit(:title,:text)
    end
end
