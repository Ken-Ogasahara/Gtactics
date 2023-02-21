class Tactics::ElementsController < ApplicationController
  def update
    tactic = Tactic.find(params[:tactic_id])
    if tactic.user_id.to_i == current_user.id
      tactic.elements.each do |element|
        # byebug
        element.update(x_coordinate: params['elements'][element.id.to_s]['x_coordinate'], y_coordinate: params['elements'][element.id.to_s]['y_coordinate'])
      end
      flash[:notice] = "位置情報を保存しました。"
      redirect_to edit_tactic_path(tactic.id)
    else
      flash[:notice] = "他ユーザーの戦術ボードのため変更不可です。"
      redirect_to edit_tactic_path(tactic.id)
    end
  end
  # {"elements"=>{"5"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}, "6"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}, "7"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}, "8"=>{"x_coordinate"=>"50", "y_coordinate"=>"50"}}}
  # "element"=>{"name"=>"test", "side"=>"friend", "tactic_id"=>"2"
  # params.require(:users).permit('japan'[name])
end