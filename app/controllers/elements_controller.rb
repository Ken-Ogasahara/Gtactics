class ElementsController < ApplicationController
  def new
    @element = Element.new()
    @tactic_id = params[:tactic_id]
  end

  def create
    @element = Element.new(element_params)
    @element.x_coordinate = 50
    @element.y_coordinate = 50
    if  @element.save
      flash[:notice] = "要素を追加しました。"
      redirect_to edit_tactic_path(@element.tactic_id)
    else
      flash[:notice] = "要素の追加に失敗しました。"
      render :new
    end
  end

  def edit
    @element = Element.find(params[:id])
  end

  def update
    @element = Element.find(params[:id])
    # @element = Element.find_by(params[:name])
    if  @element.update(element_params)
      flash[:notice] = "要素を更新しました。"
      redirect_to edit_tactic_path(@element.tactic_id)
    else
      flash[:notice] = "要素の更新に失敗しました。"
      redirect_to edit_tactic_path(@element.tactic_id)
    end
  end

  def destroy
    @element = Element.find(params[:id])
    if  @element.destroy
      flash[:notice] = "要素を削除しました。"
      redirect_to edit_tactic_path(@element.tactic_id)
    else
      flash[:notice] = "要素の削除に失敗しました。"
      redirect_to edit_tactic_path(@element.tactic_id)
    end
  end

  private
  def element_params
      params.require(:element).permit(:name, :side, :tactic_id, :x_coordinate, :y_coordinate)
  end

end
