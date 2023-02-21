class FieldsController < ApplicationController
  def new
    if current_user.name == "admin"
      @field = Field.new()
    else
      flash[:notice] = "フィールドは管理者ユーザーのみ操作可能です。"
      render :index
    end
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
    if current_user.name == "admin"
      @field = Field.find(params[:id])
      @field.destroy
      redirect_to fields_path
    else
      flash[:notice] = "フィールドは管理者ユーザーのみ操作可能です。"
      render :index
    end
  end

  def index
    @fields = Field.all
  end

  def update
    if current_user.name == "admin"
      @field = Field.find(params[:id])
      if  @field.update(field_params)
        flash[:notice] = "フィールドを更新しました。"
        redirect_to edit_field_path(@field.id)
      else
        flash[:notice] = "フィールドの変更に失敗しました。"
        redirect_to edit_field_path(@field.id)
      end
    else
      flash[:notice] = "フィールドは管理者ユーザーのみ操作可能です。"
      render :index
    end
  end

  def edit
    if current_user.name == "admin"
      @field = Field.find(params[:id])
    else
      flash[:notice] = "フィールドは管理者ユーザーのみ操作可能です。"
      render :index
    end
  end

  private
  def field_params
    params.require(:field).permit(:image, :name)
  end

end
