class LinesController < ApplicationController
  def create
    @line = Line.new(line_params)

    @line.save
    redirect_to action: :index
  end

  def show
    @line = Line.find(params[:id])
  end

  def index
    @lines = Line.all
	@line = Line.new({:title => "Ajouter un titre", :text => "Ajouter un texte"})
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
