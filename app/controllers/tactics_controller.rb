class TacticsController < ApplicationController
  def new
    @tactic = Tactic.new()
  end

  def create
    @tactic = Tactic.new(tactic_params)
    @tactic.user_id = current_user.id
    if  @tactic.save
      flash[:notice] = "新規ボードを追加しました。"
      redirect_to edit_tactic_path(@tactic.id)
    else
      flash[:notice] = "新規ボードを追加に失敗しました。"
      render :new
    end
  end

  def edit
    @tactic = Tactic.find(params[:id])
    @tactics = current_user.tactics.page(params[:page])
    @field = Field.find(@tactic.field_id)
    @elements = @tactic.elements.order(:name)
  end

  def update
    @tactic = Tactic.find(params[:id])
    if  @tactic.update(tactic_params)
      flash[:notice] = "戦術名を変更しました。"
      redirect_to edit_tactic_path(@tactic.id)
    else
      flash[:notice] = "戦術名を変更できませんでした。"
      redirect_to edit_tactic_path(@tactic.id)
    end
  end

  def destroy
    @tactic = Tactic.find(params[:id])
    @tactic.destroy
    redirect_to tactics_path
  end

  def index
    @tactics = current_user.tactics
  end

  private
  def tactic_params
      params.require(:tactic).permit(:name,:field_id)
  end
end
