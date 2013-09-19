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
    @line = Line.all

  end
  private
    def line_params
      params.require(:line).permit(:title,:text)
    end
end
