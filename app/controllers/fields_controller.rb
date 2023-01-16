class FieldsController < ApplicationController
  def new
    @field = Field.new()
  end

  def create
    @field = Field.new(field_params)
    if  @field.save
      flash[:notice] = "フィールドを追加しました。"
      redirect_to fields_path
    else
      render :new
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.destroy
    redirect_to fields_path
  end

  def index
    @fields = Field.all
  end

  def update
    @field = Field.find(params[:id])
    if  @field.update(field_params)
      flash[:notice] = "フィールドを更新しました。"
      redirect_to edit_field_path(@field.id)
    else
      flash[:notice] = "フィールドの変更に失敗しました。"
      redirect_to edit_field_path(@field.id)
    end
  end

  def edit
    @field = Field.find(params[:id])
  end

  private
  def field_params
    params.require(:field).permit(:image, :name)
  end

end
