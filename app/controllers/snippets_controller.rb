class SnippetsController < ApplicationController
  def new
    @snippet = Snippet.new
  end

  def create

    render json: params
    # @snippet = Snippet.new snippet_params
    #
    # if @snippet.save
    #   redirect_to root_path, notice: "Snippet created!"
    # else
    #   render :new, alert: "Snippet not saved! See errors!"
    # end
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def destroy
  end

  private

  def snippet_params
    params.require(:snippet).permit([:title,:work,:category_id])
  end
end
